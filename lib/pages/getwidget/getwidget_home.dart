import 'package:flutter/material.dart';
import 'package:better_flutter/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:better_flutter/common/route_setting.dart';
import 'package:better_flutter/routes/getwidget/getwidget_pages.dart';

class GetWidgetHome extends StatefulWidget {
  GetWidgetHome({Key? key}) : super(key: key);

  @override
  State<GetWidgetHome> createState() => _GetWidgetHomePageState();
}

class _GetWidgetHomePageState extends State<GetWidgetHome>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildNormalAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children:
              GetWidgetPages.routeSettings.map((el) => _buildTile(el)).toList(),
        ),
      ),
    );
  }

  Widget _buildTile(RouteSetting setting) {
    return GFCard(
      title: GFListTile(
        titleText: setting.title,
        onTap: () => Get.toNamed(setting.routePath),
      ),
      content: Text(setting.description),
    );
    // return GFListTile(
    //   title: Text(setting.title),
    //   description: Text(setting.description),
    //   onTap: () => Get.toNamed(setting.routePath),
    // );
  }

  GFAppBar _buildNormalAppbar() {
    return GFAppBar(
      title: Text("GetWidget"),
      actions: [
        IconButton(
            onPressed: () {
              Get.toNamed(AppRoute.About);
            },
            icon: Icon(
              Icons.info_outline,
              color: Colors.orange,
            ))
      ],
    );
  }
}
