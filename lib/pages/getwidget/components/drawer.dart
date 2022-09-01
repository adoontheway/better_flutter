import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_flag
                  ? "GetWidget.BuildDrawerWithHeader".tr
                  : "GetWidget.BuildNormalDrawer".tr),
              GFCheckbox(
                  onChanged: (val) {
                    _flag = val;
                    setState(() {});
                  },
                  value: _flag),
            ],
          ),
        ),
      ),
      drawer: _flag ? _buildDrawerWithHeader() : _buildDrawer(),
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
              backgroundImage: AssetImage("assets/images/avatar.jpeg"),
              //   NetworkImage(
              //       "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
            ),
            otherAccountsPictures: <Widget>[
              Image(
                image: AssetImage("assets/images/carousel01.jpeg"),
                //  NetworkImage(
                //     "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
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
