import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFImageOverlay(
            height: 200,
            width: 300,
            image: AssetImage('assets/images/avatar.jpeg'),
          ),
          SizedBox(
            height: 10,
          ),
          GFImageOverlay(
            height: 200,
            width: 300,
            child: Center(
              child: Text('Light Overlay',
                  style: TextStyle(color: GFColors.LIGHT)),
            ),
            image: AssetImage('assets/images/avatar.jpeg'),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
          GFImageOverlay(
            height: 200,
            width: 200,
            image: AssetImage('assets/images/avatar.jpeg'),
            shape: BoxShape.circle,
            boxFit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
