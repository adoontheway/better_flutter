import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final List<String> localAssets = [
    "assets/images/carousel01.jpeg",
    "assets/images/carousel02.jpeg",
    "assets/images/carousel03.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: GFCarousel(
          autoPlay: true,
          items: localAssets.map(
            (url) {
              return Container(
                margin: EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.asset(url, fit: BoxFit.cover, width: 1000),
                  // Image.network(url, fit: BoxFit.cover, width: 1000.0),
                ),
              );
            },
          ).toList(),
          onPageChanged: (index) {
            setState(() {
              index;
            });
          },
        ),
      ),
    );
  }
}
