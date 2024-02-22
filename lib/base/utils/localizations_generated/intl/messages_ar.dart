// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(url) => "رابط المخدم: ${url}";

  static String m1(version) => "نسخة: ${version}";

  static String m2(id) => "تفاصيل العربة ${id}";

  static String m3(id) => "المعرف : ${id}";

  static String m4(id) => "معرف المستخدم : ${id}";

  static String m5(date) => "التاريخ الحالي: ${date}";

  static String m6(day) => "اليوم الحالي : ${day}";

  static String m7(version) => "يرجى تحديث التطبيق إلى الإصدار ${version}";

  static String m8(total) => "المجموع : ${total}";

  static String m9(totalDiscount) => "مجموع الخصم : ${totalDiscount}";

  static String m10(totalProducts) => "عدد المنتجات : ${totalProducts}";

  static String m11(totalQuantity) => "الكمية الكلية : ${totalQuantity}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("حول"),
        "backend_url": m0,
        "build": m1,
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "cart": MessageLookupByLibrary.simpleMessage("عربة التسوق"),
        "cart_details": m2,
        "cart_id": m3,
        "cart_user_id": m4,
        "continue_": MessageLookupByLibrary.simpleMessage("المتابعة"),
        "current_date": m5,
        "current_day": m6,
        "empty_data": MessageLookupByLibrary.simpleMessage("لايوجد معلومات"),
        "general_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما ، الرجاء المحاولة مرة أخرى"),
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "msg_app_update": m7,
        "no_internet_connection": MessageLookupByLibrary.simpleMessage(
            "غير قادر على الاتصال بالانترنت"),
        "no_internet_connection_message": MessageLookupByLibrary.simpleMessage(
            "يرجى التحقق من اتصالك بالإنترنت والاتصال بالإنترنت للاستئناف"),
        "open_example": MessageLookupByLibrary.simpleMessage("افتح المثال"),
        "products": MessageLookupByLibrary.simpleMessage("منتجات"),
        "reset_category": MessageLookupByLibrary.simpleMessage("حذف النوع"),
        "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
        "search_products":
            MessageLookupByLibrary.simpleMessage("ابحث عن المنتجات"),
        "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
        "test_crashlytics":
            MessageLookupByLibrary.simpleMessage("اختبار Crashlytics"),
        "theme": MessageLookupByLibrary.simpleMessage("الموضوع"),
        "total": m8,
        "total_discount": m9,
        "total_products": m10,
        "total_quantity": m11,
        "update": MessageLookupByLibrary.simpleMessage("تحديث")
      };
}
