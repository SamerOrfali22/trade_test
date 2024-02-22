import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:rx_viewmodels/src/getx/ext/rx_extension.dart';
import 'package:rx_viewmodels/src/getx/getx_viewmodel.dart';

void main() {
  test('disposeBy cleans up resources when viewmodel is disposed', () async {
    final viewmodel = MockViewmodel();
    final rx = Rx<int>(1)..disposeBy(viewmodel);

    expect(rx.subject.isClosed, isFalse);
    viewmodel.dispose();
    expect(rx.subject.isClosed, isTrue);
  });
}

class MockViewmodel extends GetxViewmodel {
  @override
  String get loggerTag => 'MockViewmodel';
}
