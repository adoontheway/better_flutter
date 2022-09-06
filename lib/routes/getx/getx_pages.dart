import 'package:get/get.dart';
import 'package:better_flutter/common/index.dart';
import 'package:better_flutter/pages/getwidget/index.dart';
import 'package:better_flutter/routes/app_pages.dart';
import 'package:better_flutter/utils/index.dart';

class GetXPages {
  static final List<GetPage> getWidgetRoutes = [];

  static final List<RouteSetting> routeSettings = [
    RouteSetting(
        title: "GetWidget.Buttons.title".tr,
        description: "GetWidget.Buttons.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BUTTON),
  ];
}
