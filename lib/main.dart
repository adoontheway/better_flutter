import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget_test/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildNormalAppbar(),
      // appBar: _buildTabAppbar(),
      // body: _buildTabViewBody(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GFButton(
                text: "Elevated Buttons",
                onPressed: () => Navigator.of(context).pushNamed("button"),
              ),
              GFButton(
                text: "Badge",
                onPressed: () => Navigator.of(context).pushNamed("badge"),
              ),
              GFButton(
                text: "Avatar",
                onPressed: () => Navigator.of(context).pushNamed("avatar"),
              ),
              GFButton(
                text: "Image",
                onPressed: () => Navigator.of(context).pushNamed("image"),
              ),
              GFButton(
                text: "Card",
                onPressed: () => Navigator.of(context).pushNamed("card"),
              ),
              GFButton(
                text: "Carousel",
                onPressed: () => Navigator.of(context).pushNamed("carousel"),
              ),
              GFButton(
                text: "Tile",
                onPressed: () => Navigator.of(context).pushNamed("tile"),
              ),
              GFButton(
                text: "Tab",
                onPressed: () => Navigator.of(context).pushNamed("tab"),
              ),
              GFButton(
                text: "FloatingWidget",
                onPressed: () =>
                    Navigator.of(context).pushNamed("floating_widget"),
              ),
              GFButton(
                text: "Toast",
                onPressed: () => Navigator.of(context).pushNamed("toast"),
              ),
              GFButton(
                text: "Toggle",
                onPressed: () => Navigator.of(context).pushNamed("toggle"),
              ),
              GFButton(
                text: "Typography",
                onPressed: () => Navigator.of(context).pushNamed("typo"),
              ),
              GFButton(
                text: "Accordion",
                onPressed: () => Navigator.of(context).pushNamed("accordion"),
              ),
              GFButton(
                text: "Alert",
                onPressed: () => Navigator.of(context).pushNamed("alert"),
              ),
              GFButton(
                text: "Search Bar",
                onPressed: () => Navigator.of(context).pushNamed("searchbar"),
              ),
              GFButton(
                text: "Rating Bar",
                onPressed: () => Navigator.of(context).pushNamed("rating"),
              ),
              GFButton(
                text: "Dropdown",
                onPressed: () => Navigator.of(context).pushNamed("dropdown"),
              ),
              GFButton(
                text: "Loader",
                onPressed: () => Navigator.of(context).pushNamed("loader"),
              ),
              GFButton(
                text: "Progress Bar",
                onPressed: () => Navigator.of(context).pushNamed("progress"),
              ),
              GFButton(
                text: "Shimmer",
                onPressed: () => Navigator.of(context).pushNamed("shimmer"),
              ),
              GFButton(
                text: "Animation",
                onPressed: () => Navigator.of(context).pushNamed("animation"),
              ),
              GFButton(
                text: "Border",
                onPressed: () => Navigator.of(context).pushNamed("border"),
              ),
              GFButton(
                text: "BottomSheet",
                onPressed: () => Navigator.of(context).pushNamed("bottomsheet"),
              ),
              GFButton(
                text: "CheckBox",
                onPressed: () => Navigator.of(context).pushNamed("checkbox"),
              ),
              GFButton(
                text: "CheckBox List Tile",
                onPressed: () =>
                    Navigator.of(context).pushNamed("checkboxlisttile"),
              ),
              GFButton(
                text: "Multi-Select",
                onPressed: () => Navigator.of(context).pushNamed("multiselect"),
              ),
              GFButton(
                text: "Intro",
                onPressed: () => Navigator.of(context).pushNamed("intro"),
              ),
              GFButton(
                text: "Radio",
                onPressed: () => Navigator.of(context).pushNamed("radio"),
              ),
              GFButton(
                text: "Radio List Tile",
                onPressed: () =>
                    Navigator.of(context).pushNamed("radiolisttile"),
              ),
              GFButton(
                text: "Sticky Header",
                onPressed: () =>
                    Navigator.of(context).pushNamed("stickyheader"),
              ),
            ],
          ),
        ),
      ),

      // drawer: _buildDrawer(),
      drawer: _buildDrawerWithHeader(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  GFTabBarView _buildTabViewBody() {
    return GFTabBarView(controller: tabController, children: <Widget>[
      Center(
        child: Text('Tab 1'),
      ),
      Center(
        child: Text('Tab 2'),
      ),
      Center(
        child: Text('Tab 3'),
      ),
    ]);
  }

  GFAppBar _buildTabAppbar() {
    return GFAppBar(
      backgroundColor: GFColors.DARK,
      title: GFSegmentTabs(
        tabController: tabController,
        tabBarColor: GFColors.LIGHT,
        labelColor: GFColors.WHITE,
        unselectedLabelColor: GFColors.DARK,
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
      searchBar: true,
      onSubmitted: ((value) {
        print("searchbar submit: $value");
      }),
      leading: GFIconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {},
        type: GFButtonType.transparent,
      ),
      title: Text("GF Appbar"),
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

  GFDrawer _buildDrawerWithHeader() {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GFDrawerHeader(
            currentAccountPicture: GFAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
            ),
            otherAccountsPictures: <Widget>[
              Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                fit: BoxFit.cover,
              ),
              GFAvatar(
                child: Text("ab"),
              )
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('user name'),
                Text('user@userid.com'),
              ],
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: null,
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: null,
          ),
        ],
      ),
    );
  }

  GFDrawer _buildDrawer() {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('Item 1'),
            onTap: null,
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
