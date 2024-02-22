import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

void main() {
  test('test GetxViewmodel', () {
    final viewmodel = ViewmodelImpl();

    // test the onInit method
    // verify(viewmodel.onInit()).called(1);

    // test the isLoading property
    expect(viewmodel.isLoading, false);

    // test the startLoading and stopLoading methods
    viewmodel.startLoading();
    expect(viewmodel.isLoading, true);
    viewmodel.stopLoading();
    expect(viewmodel.isLoading, false);

    // test the uiError property
    expect(viewmodel.uiError, null);

    // test the clearUiError and emitUiError methods
    viewmodel.emitUiError('error');
    expect(viewmodel.uiError, isNotNull);
    viewmodel.clearUiError(viewmodel.uiError!.id);
    expect(viewmodel.uiError, null);

    // test the addRx and addRxs methods
    final rx1 = Rx<int>(0);
    final rx2 = Rx<int>(0);
    final rx3 = Rx<int>(0);

    viewmodel.addRx(rx1);
    expect(viewmodel.disposers, contains(rx1.close));

    viewmodel.addRxs([rx2, rx3]);
    expect(viewmodel.disposers, containsAll([rx2.close, rx3.close]));

    // test the addWorker and addWorkers methods
    final worker1 = Worker(() async {}, 'worker1');
    final worker2 = Worker(() async {}, 'worker2');
    final worker3 = Worker(() async {}, 'worker3');

    viewmodel.addWorker(worker1);
    expect(viewmodel.disposers, contains(worker1.call));

    viewmodel.addWorkers([worker2, worker3]);
    expect(viewmodel.disposers, containsAll([worker2.call, worker3.call]));

    // test the dispose method
    // viewmodel.dispose();
    // expect(viewmodel.disposers, isEmpty);
  });
}

class ViewmodelImpl extends GetxViewmodel {
  @override
  String get loggerTag => 'ViewmodelImpl';
}
