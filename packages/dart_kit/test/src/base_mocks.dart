// ignore_for_file: unreachable_from_main

import 'package:dart_kit/src/usecases/result_usecase.dart';
import 'package:dart_kit/src/usecases/subject_usecase.dart';
import 'package:dart_kit/src/usecases/usecase.dart';
import 'package:mockito/annotations.dart';

abstract class Callback<T> {
  T call();
}

abstract class ValueCallback<P, T> {
  T call(P param);
}

abstract class CallbackVoid implements Callback<void> {}

abstract class CallbackInt implements Callback<int> {}

abstract class CallbackString implements Callback<String> {}

abstract class ValueCallbackStringInt implements ValueCallback<String, int> {}

@GenerateMocks([
  CallbackVoid,
  CallbackInt,
  CallbackString,
  ValueCallbackStringInt,
  UseCase,
  ResultUseCase,
  SubjectUseCase,
])
void main() {}
