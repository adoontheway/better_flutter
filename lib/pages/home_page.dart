import 'package:flutter/material.dart';
import 'package:better_flutter/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
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
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("GetWidget"),
            onTap: () => Get.toNamed(AppRoute.GetWidgetHome),
          ),
        ],
      ),
    );
  }

  GFAppBar _buildNormalAppbar() {
    return GFAppBar(
      searchBar: true,
      onSubmitted: ((value) {
        print("searchbar submit: $value");
      }),
      title: Text("app_name".tr),
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
