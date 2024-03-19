class SearchParams {
  final String keyword;
  final Map<String, dynamic> filters;

  SearchParams({required this.keyword, required this.filters});

  factory SearchParams.empty() => SearchParams(keyword: '', filters: {});
}
