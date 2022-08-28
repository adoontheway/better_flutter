import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BottomSheetPage extends StatelessWidget {
  BottomSheetPage({Key? key}) : super(key: key);
  final GFBottomSheetController _controller = GFBottomSheetController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge "),
      ),
      // bottomSheet: _buildNormalBottomSheet(),
      bottomSheet: _buildExpandeContentSheet(),
      body: Center(
        child: Column(
          children: [
            GFAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingButton(),
    );
  }

  FloatingActionButton _buildFloatingButton() {
    return FloatingActionButton(
      backgroundColor: GFColors.SUCCESS,
      child: _controller.isBottomSheetOpened
          ? Icon(Icons.keyboard_arrow_down)
          : Icon(Icons.keyboard_arrow_up),
      onPressed: () {
        _controller.isBottomSheetOpened
            ? _controller.hideBottomSheet()
            : _controller.showBottomSheet();
      },
    );
  }

  GFBottomSheet _buildNormalBottomSheet() {
    return GFBottomSheet(
      controller: _controller,
      maxContentHeight: 150,
      stickyHeaderHeight: 100,
      stickyHeader: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]),
        child: const GFListTile(
          avatar: GFAvatar(
            backgroundImage: AssetImage('assets/images/carousel01.jpeg'),
          ),
          titleText: 'GetBottomSheet',
          subTitleText: 'Open source UI library',
        ),
      ),
      contentBody: Container(
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: const [
            Center(
                child: Text(
              'Getwidget reduces your overall app development time to minimum 30% because of its pre-build clean UI widget that you can use in flutter app development. We have spent more than 1000+ hours to build this library to make flutter developer’s life easy.',
              style:
                  TextStyle(fontSize: 15, wordSpacing: 0.3, letterSpacing: 0.2),
            ))
          ],
        ),
      ),
      stickyFooter: Container(
        color: GFColors.SUCCESS,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Get in touch',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'info@getwidget.dev',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
      stickyFooterHeight: 50,
    );
  }

  GFBottomSheet _buildExpandeContentSheet() {
    return GFBottomSheet(
      controller: _controller,
      maxContentHeight: 300,
      enableExpandableContent: true,
      stickyHeaderHeight: 100,
      stickyHeader: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]),
        child: const GFListTile(
          avatar: GFAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
          ),
          titleText: 'Eva Mendez',
          subTitleText: '11 minutes ago',
        ),
      ),
      contentBody: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/carousel01.jpeg'))),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 6),
                        child: Text(
                          'Add to your story',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
              ),
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                        child: InkWell(
                      child: GFListTile(
                        avatar: GFAvatar(
                          backgroundImage:
                              AssetImage('assets/images/carousel02.jpeg'),
                          size: 20,
                        ),
                        // subtitleText: 'John Mendez',
                        icon: Container(
                          width: 66,
                          height: 30,
                          child: GFButton(
                            onPressed: () {},
                            color: GFColors.PRIMARY,
                            child: Center(
                                child: Text(
                              'Send',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
