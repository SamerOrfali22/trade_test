import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/getx/datatypes/rx_future.dart';
import 'package:rx_viewmodels/src/getx/widgets/getx_future_builder.dart';

void main() {
  testWidgets('test GetxFutureBuilder', (tester) async {
    final future = RxFuture<int>();
    final widget = GetxFutureBuilder<int>(
      future: future,
      onSuccess: (data) => Text(data.toString(), textDirection: TextDirection.ltr),
      onError: (error) => Text(error.toString(), textDirection: TextDirection.ltr),
      onLoading: () => const Text('Loading...', textDirection: TextDirection.ltr),
    );

    await tester.pumpWidget(widget);

    // test the loading state
    expect(find.text('Loading...'), findsOneWidget);

    // test the success state
    future(Future.value(1));
    await tester.pumpAndSettle();
    expect(find.text('1'), findsOneWidget);

    // test the error state
    future(Future.error(Exception()));
    await tester.pumpAndSettle();
    expect(find.text('Exception'), findsOneWidget);
  });
}
