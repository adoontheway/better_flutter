import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  final List<String> localAssets = [
    "assets/images/carousel01.jpeg",
    "assets/images/carousel02.jpeg",
    "assets/images/carousel03.jpeg",
  ];

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
        title: const Text("Card"),
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

      // bottomNavigationBar: GFTabBar(
      //   length: 3,
      //   controller: tabController,
      //   tabs: [
      //     Tab(
      //       icon: Icon(Icons.directions_bike),
      //       child: Text(
      //         "Tab1",
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.directions_bus),
      //       child: Text(
      //         "Tab2",
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.directions_railway),
      //       child: Text(
      //         "Tab3",
      //       ),
      //     ),
      //   ],
      // ),
      // body: Center(
      //   child: GFTabBarView(controller: tabController, children: <Widget>[
      //     Container(color: Colors.red),
      //     Container(color: Colors.green),
      //     Container(color: Colors.blue)
      //   ]),
      // ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
