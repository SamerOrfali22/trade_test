import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';
import 'package:rx_viewmodels/src/getx/widgets/getx_loading_overlay.dart';

void main() {
  testWidgets('test LoadingOverlay', (tester) async {
    const child = Text('child');
    const loadingWidget = SizedBox();
    final viewmodel = GetxViewmodelImpl();
    final widget = Directionality(
      textDirection: TextDirection.ltr,
      child: GetxLoadingOverlay(
        viewmodels: [viewmodel],
        loadingWidget: loadingWidget,
        child: child,
      ),
    );

    await tester.pumpWidget(widget);

    // test that the loading widget is not displayed
    expect(find.byWidget(loadingWidget), findsNothing);

    // test that the loading widget is displayed when the viewmodel is loading
    viewmodel.startLoading();
    await tester.pumpAndSettle();
    expect(find.byWidget(loadingWidget), findsOneWidget);

    // test that the loading widget is hidden when the viewmodel is not loading
    viewmodel.stopLoading();
    await tester.pumpAndSettle();
    expect(find.byWidget(loadingWidget), findsNothing);

    // test that the loading widget is displayed when the viewmodel request loading twice and request stop once
    viewmodel
      ..startLoading()
      ..startLoading()
      ..stopLoading();

    await tester.pumpAndSettle();
    expect(find.byWidget(loadingWidget), findsOneWidget);
  });
}

class GetxViewmodelImpl extends GetxViewmodel {
  @override
  String get loggerTag => 'GetxViewmodelImpl';
}
