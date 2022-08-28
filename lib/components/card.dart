import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Center(
        child: Column(
          children: [
            GFCard(
              boxFit: BoxFit.cover,
              image: Image.asset('assets/images/avatar.jpeg'),
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                ),
                title: Text('Card Title: Example'),
                subTitle: Text('Card Sub Title'),
              ),
              content: Text("Some quick example text to build on the card"),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'Buy',
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'Cancel',
                  ),
                ],
              ),
            ),
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              image: Image.asset(
                'assets/images/carousel01.jpeg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              showImage: true,
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                ),
                titleText: 'Card with flutter avatar',
                subTitleText: 'PlayStation 4',
              ),
              content: Text("Some quick example text to build on the card"),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFAvatar(
                    backgroundColor: GFColors.PRIMARY,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  GFAvatar(
                    backgroundColor: GFColors.SECONDARY,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  GFAvatar(
                    backgroundColor: GFColors.SUCCESS,
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              showOverlayImage: true,
              imageOverlay: AssetImage(
                'assets/images/avatar.jpeg',
              ),
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                ),
                titleText: 'with overlayimage',
                subTitleText: 'PlayStation 4',
              ),
              content: Text("Some quick example text to build on the card"),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFAvatar(
                    backgroundColor: GFColors.PRIMARY,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
