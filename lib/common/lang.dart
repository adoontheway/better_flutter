import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:better_flutter/common/locales/locale.dart';

class LocaleService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static final fallbackLoacale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": en_US,
        "zh_CN": zh_CN,
      };
}
