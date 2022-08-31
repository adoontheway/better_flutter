import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab"),
      ),
      body: GFTabs(
        controller: tabController,
        length: 3,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.directions_bike),
            child: Text(
              "Tab1",
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
            child: Text(
              "Tab2",
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_railway),
            child: Text(
              "Tab3",
            ),
          ),
        ],
        tabBarView: GFTabBarView(
          controller: tabController,
          children: <Widget>[
            Container(
              child: Icon(Icons.directions_bike),
              color: Colors.red,
            ),
            Container(
              child: Icon(Icons.directions_bus),
              color: Colors.blue,
            ),
            Container(
              child: Icon(Icons.directions_railway),
              color: Colors.orange,
            ),
          ],
        ),
      ),
      bottomNavigationBar: GFTabBar(
        length: 3,
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.directions_bike),
            child: Text(
              "Tab1",
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
            child: Text(
              "Tab2",
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_railway),
            child: Text(
              "Tab3",
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
