import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_best_practice/common/index.dart';
import 'package:flutter_best_practice/routes/app_pages.dart';
import 'package:flutter_best_practice/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      title: 'Flutter Widgets',
      theme: AppTheme.light,
      getPages: AppPage.routes,
      initialRoute: AppPage.INITIAL,
      locale: LocaleService.locale,
      fallbackLocale: LocaleService.fallbackLoacale,
      translations: LocaleService(),
    );
  }
}
