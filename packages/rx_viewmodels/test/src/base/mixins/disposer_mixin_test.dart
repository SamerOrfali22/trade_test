import 'package:flutter_test/flutter_test.dart';
import 'package:rx_viewmodels/src/base/mixins/disposer_mixin.dart';

void main() {
  test('disposeDisposers calls all disposers', () {
    final disposer1 = DisposerMock();
    final disposer2 = DisposerMock();
    final disposer3 = DisposerMock();

    DisposersMixinMock()
      ..addDisposer(disposer1.dispose)
      ..addDisposer(disposer2.dispose)
      ..addDisposer(disposer3.dispose)
      ..disposeDisposers();

    expect(disposer1.disposeCount, 1);
    expect(disposer2.disposeCount, 1);
    expect(disposer3.disposeCount, 1);
  });

  test('addDisposer adds disposer to list', () {
    final disposer1 = DisposerMock();
    final disposer2 = DisposerMock();
    final disposer3 = DisposerMock();

    final disposersMixin = DisposersMixinMock()
      ..addDisposer(disposer1.dispose)
      ..addDisposer(disposer2.dispose)
      ..addDisposer(disposer3.dispose);

    expect(
      disposersMixin.disposers,
      [disposer1.dispose, disposer2.dispose, disposer3.dispose],
    );
  });

  test('addDisposers adds disposers to list', () {
    final disposer1 = DisposerMock();
    final disposer2 = DisposerMock();
    final disposer3 = DisposerMock();

    final disposersMixin = DisposersMixinMock()
      ..addDisposers([disposer1.dispose, disposer2.dispose])
      ..addDisposers([disposer3.dispose]);

    expect(
      disposersMixin.disposers,
      [disposer1.dispose, disposer2.dispose, disposer3.dispose],
    );
  });
}

class DisposerMock {
  int disposeCount = 0;

  void dispose() => disposeCount++;
}

class DisposersMixinMock with DisposersMixin {}
