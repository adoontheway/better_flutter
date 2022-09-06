import 'package:better_flutter/pages/about_page.dart';
import 'package:better_flutter/utils/index.dart';
import 'package:get/get.dart';
import 'package:better_flutter/pages/getwidget/getwidget_home.dart';
import 'package:better_flutter/pages/home_page.dart';
import 'package:better_flutter/routes/getwidget/getwidget_pages.dart';

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
