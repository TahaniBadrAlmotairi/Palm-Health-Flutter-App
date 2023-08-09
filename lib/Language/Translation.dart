
import 'package:get/get.dart';
import 'package:palm_health/Language/Arabic.dart';
import 'package:palm_health/Language/English.dart';

class Translation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar,
  };

}