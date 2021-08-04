import 'package:get/get.dart';

class Message extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          //'en' language code 'US' is country code
          'hello': 'Hello',
        },
        'hi_IN': {
          'hello': 'नामासकार',
        },
        'fr_FR': {
          'hello': 'Bonjour',
        }
      };
}
