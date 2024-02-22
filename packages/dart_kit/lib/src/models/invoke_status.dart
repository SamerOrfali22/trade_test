/// A class representing the status of an [UseCase] execution.
sealed class InvokeStatus {
  /// Private constructor to prevent direct instantiation of the [InvokeStatus] class.
  const InvokeStatus._();

  /// Creates a new instance of [InvokeStatus] with the status set to started.
  const factory InvokeStatus.started() = InvokeStarted;

  /// Creates a new instance of [InvokeStatus] with the status set to success.
  const factory InvokeStatus.success() = InvokeSuccess;

  /// Creates a new instance of [InvokeStatus] with the status set to error and the specified [throwable].
  const factory InvokeStatus.error(dynamic throwable) = InvokeError;
}

class InvokeStarted extends InvokeStatus {
  const InvokeStarted() : super._();

  @override
  String toString() => 'InvokeStarted';

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) || (other.runtimeType == runtimeType && other is InvokeStarted);

  @override
  int get hashCode => runtimeType.hashCode;
}

class InvokeSuccess extends InvokeStatus {
  const InvokeSuccess() : super._();

  @override
  String toString() => 'InvokeSuccess';

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) || (other.runtimeType == runtimeType && other is InvokeSuccess);

  @override
  int get hashCode => runtimeType.hashCode;
}

class InvokeError extends InvokeStatus {
  const InvokeError(this.throwable) : super._();
  final dynamic throwable;

  @override
  String toString() => 'InvokeError(error: $throwable)';

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is InvokeError && other.throwable == throwable);

  @override
  int get hashCode => Object.hash(runtimeType, throwable.hashCode);
}
