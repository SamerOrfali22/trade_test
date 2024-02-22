/// Enum representing the type of token.
enum TokenType {
  /// A bearer token.
  Bearer,

  /// No token.
  None,
  ;

  const TokenType();

  /// Returns a map of extra data for the [TokenType].
  Map<String, dynamic> get asExtra {
    switch (this) {
      case TokenType.Bearer:
        return <String, dynamic>{
          'secure': <Map<String, String>>[
            {
              'type': 'http',
              'scheme': 'bearer',
              'name': 'BearerAuth',
            },
          ],
        };

      case TokenType.None:
        return {};
    }
  }

  /// Returns a [TokenType] from the given extra data.
  static TokenType fromExtra(Map<String, dynamic> extra) {
    final secure = extra['secure'] as List<Map<String, String>>?;

    if (secure != null && secure.isNotEmpty && secure.any((it) => it['type'] == 'http' && it['scheme'] == 'bearer')) {
      return TokenType.Bearer;
    }

    return TokenType.None;
  }
}
