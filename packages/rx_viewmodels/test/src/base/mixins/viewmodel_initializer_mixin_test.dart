import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:rx_viewmodels/src/base/mixins/viewmodel_initializer_mixin.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

void main() {
  group('ViewmodelInitializerMixin', () {
    const testWidget = TestWidget();

    setUp(() => GetIt.I.registerFactoryParam((p1, p2) => TestViewmodel(param1: 'param1', param2: 'param2')));

    tearDown(() async => GetIt.I.reset());

    testWidgets('initializes viewmodel', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      final state = tester.state<_TestWidgetState>(find.byType(TestWidget));

      expect(state.viewmodel, isNotNull);
    });

    testWidgets('disposes viewmodel', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      final state = tester.state<_TestWidgetState>(find.byType(TestWidget));
      await tester.pumpWidget(Container());
      verify(state.viewmodel.dispose()).called(1);
    });

    testWidgets('calls onPostFrame on viewmodel', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      final state = tester.state<_TestWidgetState>(find.byType(TestWidget));
      verify(state.viewmodel.onPostFrame(state.context)).called(1);
    });
  });
}

class TestViewmodel extends Mock implements GetxViewmodel {
  TestViewmodel({required this.param1, required this.param2});

  @override
  String get loggerTag => 'TestViewmodel';

  final Object param1;
  final Object param2;
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> with ViewmodelInitializerMixin<TestWidget, TestViewmodel> {
  @override
  Object get viewmodelParam1 => 'param1';

  @override
  Object get viewmodelParam2 => 'param2';

  @override
  Widget build(BuildContext context) => Container();
}
