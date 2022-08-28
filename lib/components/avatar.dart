import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge "),
      ),
      body: Center(
        child: Column(
          children: [
            GFAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GFAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                  shape: GFAvatarShape.circle,
                ),
                GFAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                  shape: GFAvatarShape.square,
                ),
                GFAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                  shape: GFAvatarShape.standard,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
