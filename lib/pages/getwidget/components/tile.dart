import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TilePage extends StatelessWidget {
  const TilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFListTile(
            titleText: 'BasicTile',
            subTitleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing',
            icon: Icon(Icons.favorite),
          ),
          GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
              ),
              titleText: 'Tile with avatar',
              subTitleText:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
              icon: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
