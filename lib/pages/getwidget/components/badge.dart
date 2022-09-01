import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFBadge(
                text: "s",
                shape: GFBadgeShape.standard,
              ),
              GFBadge(
                text: "c",
                shape: GFBadgeShape.circle,
              ),
              GFBadge(
                text: "p",
                shape: GFBadgeShape.pills,
              ),
              GFBadge(
                text: "s1",
                shape: GFBadgeShape.square,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFBadge(
                text: "S",
                size: GFSize.SMALL,
              ),
              GFBadge(
                text: "M",
                size: GFSize.MEDIUM,
              ),
              GFBadge(
                text: "L",
                size: GFSize.LARGE,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButtonBadge(
                onPressed: () {},
                text: 'primary',
                icon: GFBadge(
                  child: Text('12'),
                ),
              ),
              GFButtonBadge(
                onPressed: () {},
                text: 'primary',
                icon: GFBadge(
                  child: Text('12'),
                ),
                position: GFPosition.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
