// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dart_kit/src/utils/crash_report_tool.dart';
import 'package:logger/logger.dart' as dart_log;
import 'package:logger/logger.dart';
import 'package:stack_trace/stack_trace.dart';

/// base logger class that wrap reporting tool strategy and logging strategy.
abstract class Logger {
  static final CrashReportTool _crashReportTool = NoOpsCrashReportTool();

  static final dart_log.Logger _instance = dart_log.Logger(
    printer: _CrashReportWrappedPrinter(PrettyPrinter(), _crashReportTool),
    filter: _DisplayAllLogFilter(),
    output: MultiOutput([ConsoleOutput()]),
  );

  static Future init() {
    // _crashReportTool = crashReportTool;
    return _crashReportTool.init();
  }

  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.trace, message, error: error, stackTrace: stackTrace);

  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.debug, message, error: error, stackTrace: stackTrace);

  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.info, message, error: error, stackTrace: stackTrace);

  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.warning, message, error: error, stackTrace: stackTrace);

  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.error, message, error: error, stackTrace: stackTrace);

  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _instance.log(Level.off, message, error: error, stackTrace: stackTrace);

  static Future<void> fatal({dynamic error, StackTrace? stackTrace}) async {
    d('Fatal', error, stackTrace);
    await _crashReportTool.logFatal(error, stackTrace);
  }
}

class _CrashReportWrappedPrinter extends LogPrinter {
  _CrashReportWrappedPrinter(this._printer, this._crashReportTool);

  final LogPrinter _printer;
  final CrashReportTool _crashReportTool;

  @override
  Future<void> init() => _printer.init();

  @override
  List<String> log(LogEvent event) {
    late final dart_log.LogEvent sanitizedEvent = dart_log.LogEvent(
      event.level,
      event.message,
      error: event.error,
      stackTrace: event.stackTrace ?? _currentStacktrace(),
    );

    if (event.level case Level.warning || Level.error) {
      _crashReportTool.logNonFatal(sanitizedEvent);
    }

    return _printer.log(sanitizedEvent);
  }

  StackTrace _currentStacktrace() {
    final trace = Trace.current(4);
    final frames = trace.frames;
    final newFrames = frames.map(
      (frame) => Frame(
        frame.uri,
        frame.line,
        frame.column,
        frame.member,
      ),
    );
    return _PrintableTrace(newFrames);
  }

  @override
  Future<void> destroy() => _printer.destroy();
}

class _PrintableTrace extends Trace {
  _PrintableTrace(super.frames);

  // It's equal to VMTrace.toString() Method.
  // Firebase use it to generate the stacktrace
  @override
  String toString() {
    var i = 1;
    return frames.map((frame) {
      final number = '#${i++}'.padRight(8);
      final member = frame.member!
          .replaceAllMapped(
            RegExp(r'[^.]+\.<async>'),
            (match) => '${match[1]}.<${match[1]}_async_body>',
          )
          .replaceAll('<fn>', '<anonymous closure>');
      final line = frame.line ?? 0;
      final column = frame.column ?? 0;
      return '$number$member (${frame.uri}:$line:$column)\n';
    }).join();
  }
}

class _DisplayAllLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}
