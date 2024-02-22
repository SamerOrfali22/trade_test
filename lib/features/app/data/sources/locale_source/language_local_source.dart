import 'package:stock/stock.dart';
import 'package:weather_app/features/app/presentation/ui-models/languages_enum.dart';

/// It is recommended to use the Stock library in the repository implementation layer to manage the integration of the Local Source and Remote Source.
/// This will provide a standard API that is independent of the presence or type of Local Source.
/// ///This approach can improve the user experience and make it easier to migrate to offline support in the future.
typedef LanguageLocalSource = SourceOfTruth<String, LanguageEnum>;
