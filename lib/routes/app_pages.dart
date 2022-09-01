import 'package:flutter_best_practice/pages/about_page.dart';
import 'package:flutter_best_practice/utils/index.dart';
import 'package:get/get.dart';
import 'package:flutter_best_practice/pages/getwidget/getwidget_home.dart';
import 'package:flutter_best_practice/pages/home_page.dart';
import 'package:flutter_best_practice/routes/getwidget/getwidget_pages.dart';

part 'app_routes.dart';
part 'getwidget/getwidget_routes.dart';

class AppPage {
  static const INITIAL = AppRoute.GetWidgetHome; //AppRoute.Home;
  static final List<GetPage> routes = [
    GetPage(name: AppRoute.Home, page: () => MyHomePage()),
    GetPage(
        name: AppRoute.About,
        page: GenerateGetPage(
            AboutPage(), 'lib/pages/about_page.dart', '', 'About Page')),
    GetPage(
      name: AppRoute.GetWidgetHome,
      page: () => GetWidgetHome(),
      children: GetWidgetPages.getWidgetRoutes,
    ),
  ];
}
