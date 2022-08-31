import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SticktHeaderPage extends StatefulWidget {
  SticktHeaderPage({Key? key}) : super(key: key);
  @override
  _SticktHeaderPageState createState() => _SticktHeaderPageState();
}

class _SticktHeaderPageState extends State<SticktHeaderPage> {
  List imageList = [
    'assets/images/carousel01.jpeg',
    'assets/images/carousel02.jpeg',
    'assets/images/carousel03.jpeg',
  ];
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sticky Header"),
        ),
        body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) => GFStickyHeader(
            stickyContent: Container(
              alignment: AlignmentDirectional.center,
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF42335d),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Contact Group $index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            content: Container(
              height: 300,
              child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          GFCheckboxListTile(
                            titleText: 'Eva Mendez',
                            subTitleText: 'Hello',
                            avatar: GFAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/carousel01.jpeg'),
                            ),
                            size: 25,
                            activeBgColor: Colors.green,
                            activeIcon: Icon(
                              Icons.check,
                              size: 15,
                              color: Colors.white,
                            ),
                            type: GFCheckboxType.circle,
                            onChanged: (val) {
                              setState(() {
                                check = val;
                              });
                            },
                            value: check,
                            inactiveIcon: null,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Divider(),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
