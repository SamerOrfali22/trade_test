import 'dart:collection';

/// provide disposing functionality in functional way.
mixin DisposersMixin {
  /// bool of function should be disposed.
  final List<void Function()> _disposers = [];

  List<void Function()> get disposers => UnmodifiableListView(_disposers);

  /// add [disposer] function to bool.
  void addDisposer(void Function() disposer) => _disposers.add(disposer);

  /// add list of [disposer] functions to bool.
  void addDisposers(List<void Function()> disposers) => _disposers.addAll(disposers);

  /// clean up the bool
  void disposeDisposers() => _disposers.forEach(_dispose);

  void _dispose(void Function() disposer) => disposer();
}
