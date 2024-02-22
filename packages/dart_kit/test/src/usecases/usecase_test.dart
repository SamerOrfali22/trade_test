import 'dart:async';

import 'package:dart_kit/dart_kit.dart';
import 'package:test/test.dart';

void main() {
  test('success usecase job', () async {
    final usecase = SuccessUseCase();

    final resultStream = usecase(true);

    expect(resultStream, emitsInOrder([const InvokeStatus.started(), const InvokeStatus.success(), emitsDone]));
  });

  test('error invoke job', () async {
    final usecase = ErrorUseCase();

    final resultStream = usecase(true);

    expect(
      resultStream,
      emitsInOrder([const InvokeStatus.started(), InvokeStatus.error(ResultException('')), emitsDone]),
    );
  });

  test('long running job', () async {
    const waitingDuration = Duration(milliseconds: 100);
    final usecase = LongJobUseCase();

    final resultStream = usecase(waitingDuration, timeout: waitingDuration - const Duration(milliseconds: 50));

    final result = await resultStream.take(2).last;
    expect(result, isA<InvokeError>());
    expect((result as InvokeError).throwable, isA<TimeoutException>());
  });
}

class SuccessUseCase extends UseCase<bool> {
  @override
  Future<void> doWork(bool params) => Future.value();
}

class ErrorUseCase extends UseCase<bool> {
  @override
  Future<void> doWork(bool params) => throw ResultException('');
}

class LongJobUseCase extends UseCase<Duration> {
  @override
  Future<void> doWork(Duration params) => Future.delayed(params);
}
