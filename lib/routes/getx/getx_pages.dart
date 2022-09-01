import 'package:get/get.dart';
import 'package:flutter_best_practice/common/index.dart';
import 'package:flutter_best_practice/pages/getwidget/index.dart';
import 'package:flutter_best_practice/routes/app_pages.dart';
import 'package:flutter_best_practice/utils/index.dart';

class GetXPages {
  static final List<GetPage> getWidgetRoutes = [];

  static final List<RouteSetting> routeSettings = [
    RouteSetting(
        title: "GetWidget.Buttons.title".tr,
        description: "GetWidget.Buttons.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BUTTON),
  ];
}
