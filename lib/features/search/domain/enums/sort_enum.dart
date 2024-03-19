enum SortEnum {
  newest,
  priceLowToHigh,
  priceHighToLow,
  bestMatch,
  relevance;

  String get name => switch (this) {
        SortEnum.newest => 'Newest',
        SortEnum.priceLowToHigh => 'Price: High to Low',
        SortEnum.priceHighToLow => 'Price: Low to High',
        SortEnum.bestMatch => 'Best Match',
        SortEnum.relevance => 'Relevance',
      };

  String get param => switch (this) {
        SortEnum.newest => "createdAt:desc",
        SortEnum.priceLowToHigh => 'price:desc',
        SortEnum.priceHighToLow => 'price:asc',
        SortEnum.bestMatch => 'bestMatch',
        SortEnum.relevance => 'relevance:desc',
      };
}
