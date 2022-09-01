import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          GFAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
          ),
          SizedBox(
            height: 10,
          ),
          GFAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            shape: GFAvatarShape.circle,
          ),
          SizedBox(
            height: 10,
          ),
          GFAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            shape: GFAvatarShape.square,
          ),
          SizedBox(
            height: 10,
          ),
          GFAvatar(
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            shape: GFAvatarShape.standard,
          ),
        ],
      ),
    );
  }
}
