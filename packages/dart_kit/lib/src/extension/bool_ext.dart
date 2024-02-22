import 'package:dart_kit/src/extension/object_ext.dart';

extension BoolExt on bool {
  /// syntactic sugar for object == false.
  bool get isFalse => this == false;
}

extension NullableBoolExt on bool? {
  /// syntactic sugar for object == null || object == false.
  bool get isNullOrFalse => isNull || this!.isFalse;
}
