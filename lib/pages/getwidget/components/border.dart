import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BorderPage extends StatelessWidget {
  const BorderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: GFBorder(
              color: Color(0xFF19CA4B),
              dashedLine: [2, 0],
              type: GFBorderType.rect,
              child: Image.asset(
                'assets/images/carousel02.jpeg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Text("Dash Border"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: GFBorder(
              dashedLine: [4, 6],
              type: GFBorderType.rect,
              // type: GFBorderType.circle,
              color: Color(0xFF19CA4B),
              child: Image.asset(
                'assets/images/carousel03.jpeg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Text("Dot Border"),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: GFBorder(
              color: Color(0xFF19CA4B),
              dashedLine: [2, 1],
              type: GFBorderType.rRect,
              child: Image.asset(
                'assets/images/carousel01.jpeg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
