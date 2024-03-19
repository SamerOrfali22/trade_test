/// represents a collection of endpoints for a web service.
class EndPoints {
  const EndPoints._();

  static String get search => 'catalog-search/v4/products/search';

  static String get weather => 'data/2.5/weather';

  static String get forecast => 'data/2.5/forecast';
}
