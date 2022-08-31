import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AppbarPage extends StatefulWidget {
  AppbarPage({Key? key}) : super(key: key);

  @override
  State<AppbarPage> createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> with TickerProviderStateMixin {
  late TabController tabController;
  int groupValue = 0;
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
      appBar: groupValue == 0 ? _buildTabAppbar() : _buildNormalAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: _buildTabViewBody(),
          ),
          SizedBox(
            height: 200,
            child: Row(
              children: [
                GFRadio(
                  size: GFSize.LARGE,
                  activeBorderColor: GFColors.SUCCESS,
                  value: 0,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  radioColor: GFColors.SUCCESS,
                ),
                const Text("Appbar with segment tabs"),
                GFRadio(
                  size: GFSize.MEDIUM,
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                const Text("Appbar with searchbar"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GFTabBarView _buildTabViewBody() {
    return GFTabBarView(
      controller: tabController,
      children: <Widget>[
        Center(
          child: Text('Tab 1'),
        ),
        Center(
          child: Text('Tab 2'),
        ),
        Center(
          child: Text('Tab 3'),
        ),
      ],
    );
  }

  GFAppBar _buildTabAppbar() {
    return GFAppBar(
      // backgroundColor: GFColors.DARK,
      title: GFSegmentTabs(
        tabController: tabController,
        tabBarColor: GFColors.TRANSPARENT,
        labelColor: GFColors.WHITE,
        unselectedLabelColor: GFColors.ALT,
        indicator: BoxDecoration(
          color: GFColors.DARK,
        ),
        indicatorPadding: EdgeInsets.all(8.0),
        indicatorWeight: 2.0,
        border: Border.all(color: Colors.white, width: 1.0),
        length: 3,
        tabs: <Widget>[
          Text(
            "Tab1",
          ),
          Text(
            "Tab2",
          ),
          Text(
            "Tab3",
          ),
        ],
      ),
    );
  }

  GFAppBar _buildNormalAppbar() {
    return GFAppBar(
      // searchBar: true,
      onSubmitted: ((value) {
        print("searchbar submit: $value");
      }),
      title: Text("GF Appbar with searchbar"),
      actions: <Widget>[
        GFIconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          onPressed: () {},
          type: GFButtonType.transparent,
        ),
      ],
    );
  }
}
