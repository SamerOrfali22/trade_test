import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_result_stream.dart';
import 'package:rx_viewmodels/src/getx/widgets/getx_stream_builder.dart';

void main() {
  testWidgets('test GetxStreamBuilder', (tester) async {
    final stream = RxResultStream<int>();
    final widget = GetxStreamBuilder<int>(
      stream: stream,
      onData: (origin, data) => Text(data.toString(), textDirection: TextDirection.ltr),
      onError: (error) => Text(error.toString(), textDirection: TextDirection.ltr),
      onLoading: () => const Text('Loading...', textDirection: TextDirection.ltr),
    );

    await tester.pumpWidget(widget);

    // test the loading state
    expect(find.text('Loading...'), findsOneWidget);

    // test the error state with error result event
    stream(Stream.value(Result.error(ResultOrigin.other, Exception())));
    await tester.pumpAndSettle();
    expect(find.text('Exception'), findsOneWidget);

    // test the success state
    stream(Stream.value(const Result.data(ResultOrigin.other, 1)));
    await tester.pumpAndSettle();
    expect(find.text('1'), findsOneWidget);

    // test the error state with stream exception
    stream(Stream.error(Exception()));
    await tester.pumpAndSettle();
    expect(find.text('Exception'), findsOneWidget);
  });
}
