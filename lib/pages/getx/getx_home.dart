import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:better_flutter/common/route_setting.dart';
import 'package:better_flutter/routes/getwidget/getwidget_pages.dart';

class GetXHome extends StatefulWidget {
  GetXHome({Key? key}) : super(key: key);

  @override
  State<GetXHome> createState() => _GetXHomePageState();
}

class _GetXHomePageState extends State<GetXHome> with TickerProviderStateMixin {
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
    return GFListTile(
      title: Text(setting.title),
      description: Text(setting.description),
      onTap: () => Get.toNamed(setting.routePath),
    );
  }

  GFAppBar _buildNormalAppbar() {
    return GFAppBar(
      title: const Text("GetWidget"),
    );
  }
}
