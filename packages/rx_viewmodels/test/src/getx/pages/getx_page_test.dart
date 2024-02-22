import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:rx_viewmodels/src/base/ui_error.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';
import 'package:rx_viewmodels/src/getx/pages/getx_page.dart';

void main() {
  group('GetxPage', () {
    testWidgets('calls onGeneralError when viewmodel.uiError changes', (tester) async {
      GetIt.I.registerFactoryParam((p1, p2) => RealViewmodel());
      const basePage = TestPage();
      await tester.pumpWidget(const MaterialApp(home: basePage));

      final state = tester.state<_TestPageState>(find.byType(TestPage));
      final viewmodel = state.viewmodel;

      final uiError = UiError.generate('some error');
      viewmodel.emitUiError(uiError);

      await tester.pumpAndSettle();

      expect(state.onGeneralErrorCallCount, 1);
      expect(viewmodel.uiError, isNull);
      await GetIt.I.reset();
    });
  });
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends GetxPage<TestPage, RealViewmodel> {
  @override
  String get loggerTag => 'TestPage';

  int onGeneralErrorCallCount = 0;

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();

  @override
  void onGeneralError(UiError error) => onGeneralErrorCallCount++;
}

class RealViewmodel extends GetxViewmodel {
  RealViewmodel();

  @override
  String get loggerTag => 'MockViewmodel';
}
