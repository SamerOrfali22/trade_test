/// represents a collection of endpoints for a web service.
abstract class EndPoints {
  const EndPoints._();

  static _Base base = const _Base._();
}

class _Base {
  const _Base._();

  //* General *//
  String get settings => '/v1/settings';
}
