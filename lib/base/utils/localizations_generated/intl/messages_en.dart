// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(url) => "Backend Url: ${url}";

  static String m1(version) => "Version: ${version}";

  static String m2(id) => "Cart ${id} Details";

  static String m3(id) => "id : ${id}";

  static String m4(id) => "user id : ${id}";

  static String m5(date) => "Current Date: ${date}";

  static String m6(day) => "Current Day: ${day}";

  static String m7(version) => "Please update the app to version ${version}";

  static String m8(total) => "total : ${total}";

  static String m9(totalDiscount) => "total discount : ${totalDiscount}";

  static String m10(totalProducts) => "total products : ${totalProducts}";

  static String m11(totalQuantity) => "total quantity : ${totalQuantity}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "backend_url": m0,
        "build": m1,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cart": MessageLookupByLibrary.simpleMessage("Cart"),
        "cart_details": m2,
        "cart_id": m3,
        "cart_user_id": m4,
        "continue_": MessageLookupByLibrary.simpleMessage("Continue"),
        "current_date": m5,
        "current_day": m6,
        "empty_data": MessageLookupByLibrary.simpleMessage("No data found"),
        "general_error": MessageLookupByLibrary.simpleMessage(
            "Something went wrong, please retry"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "locateMe": MessageLookupByLibrary.simpleMessage("Locate me"),
        "msg_app_update": m7,
        "nextForecast": MessageLookupByLibrary.simpleMessage("Next Forecast"),
        "no_internet_connection": MessageLookupByLibrary.simpleMessage(
            "Unable to connect to the internet"),
        "no_internet_connection_message": MessageLookupByLibrary.simpleMessage(
            "Please check you internet connection and go online to resume"),
        "open_example": MessageLookupByLibrary.simpleMessage("Open Example"),
        "products": MessageLookupByLibrary.simpleMessage("Products"),
        "reset_category":
            MessageLookupByLibrary.simpleMessage("Reset Category"),
        "retry": MessageLookupByLibrary.simpleMessage("retry"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "search_products":
            MessageLookupByLibrary.simpleMessage("Search Products"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "test_crashlytics":
            MessageLookupByLibrary.simpleMessage("Test Crashlytics"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "thisWeek": MessageLookupByLibrary.simpleMessage("This Week"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "total": m8,
        "total_discount": m9,
        "total_products": m10,
        "total_quantity": m11,
        "update": MessageLookupByLibrary.simpleMessage("Update")
      };
}
