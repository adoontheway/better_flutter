import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget_test/routes/app_pages.dart';
import 'package:getwidget_test/theme/app_theme.dart';

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
      // enableLog: true,
      title: 'Flutter Widgets',
      theme: AppTheme.dark,
      getPages: AppPage.routes,
      initialRoute: AppPage.INITIAL,
    );
  }
}
