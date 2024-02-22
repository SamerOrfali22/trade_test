import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

/// Base UI error model
class UiError extends Equatable {
  const UiError({
    required this.id,
    required this.error,
  });

  static UiError generate(Object error) => UiError(
        id: const Uuid().v1(),
        error: error,
      );

  final String id;
  final Object error;

  UiError copyWith({
    String? id,
    Object? error,
  }) {
    return UiError(
      id: id ?? this.id,
      error: error ?? this.error,
    );
  }

  @override
  String toString() => 'UiError(id: $id, error: $error)';

  @override
  List<Object> get props => [id, error];
}
