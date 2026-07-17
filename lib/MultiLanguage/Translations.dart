import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'name': 'Sanskriti',
      'position': 'Flutter Developer',
      'experience': '3+ Years',
      'welcome': 'Welcome to GetX Course',
      'description': 'This is the multi language page',
    },

    'hi_IN': {
      'name': 'संस्कृति',
      'position': 'फ्लटर डेवलपर',
      'experience': '3+ वर्ष',
      'welcome': 'GetX कोर्स में आपका स्वागत है',
      'description': 'यह बहुभाषी पेज है',
    },
  };
}