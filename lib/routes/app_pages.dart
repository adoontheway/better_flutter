import 'package:get/get.dart';
import 'package:getwidget_test/pages/getwidget/getwidget_home.dart';
import 'package:getwidget_test/pages/home/home_page.dart';
import 'package:getwidget_test/routes/getwidget_pages.dart';

part 'app_routes.dart';
part './getwidget_routes.dart';

class AppPage {
  static const INITIAL = AppRoute.Home;
  static final List<GetPage> routes = [
    GetPage(name: AppRoute.Home, page: () => MyHomePage()),
    GetPage(
      name: AppRoute.GetWidgetHome,
      page: () => GetWidgetHome(),
      children: GetWidgetPages.getWidgetRoutes,
    ),
  ];
}
