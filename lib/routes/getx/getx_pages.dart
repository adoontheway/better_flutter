import 'package:get/get.dart';
import 'package:getwidget_test/common/index.dart';
import 'package:getwidget_test/pages/getwidget/index.dart';
import 'package:getwidget_test/routes/app_pages.dart';
import 'package:getwidget_test/utils/index.dart';

class GetXPages {
  static final List<GetPage> getWidgetRoutes = [];

  static final List<RouteSetting> routeSettings = [
    RouteSetting(
        title: "GetWidget.Buttons.title".tr,
        description: "GetWidget.Buttons.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BUTTON),
  ];
}
