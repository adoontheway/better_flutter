import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFTypography(
            text: 'GF Header Typo1',
            type: GFTypographyType.typo1,
            icon: Icon(Icons.send),
          ),
          GFTypography(
            text: 'GF Header Typo1',
            type: GFTypographyType.typo1,
            icon: Icon(Icons.send),
            backgroundImage: AssetImage('assets/images/carousel01.jpg'),
          ),
        ],
      ),
    );
  }
}
