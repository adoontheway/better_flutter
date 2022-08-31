import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge "),
      ),
      body: Center(
        child: Column(
          children: [
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
      ),
    );
  }
}
