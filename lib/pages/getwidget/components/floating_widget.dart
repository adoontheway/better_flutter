import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class FloatingWidgetPage extends StatelessWidget {
  const FloatingWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFFloatingWidget(
      child: GFIconBadge(
          child: GFAvatar(
            size: GFSize.LARGE,
            backgroundImage: AssetImage('assets/images/avatar.jpeg'),
          ),
          counterChild: GFBadge(
            text: '12',
            shape: GFBadgeShape.circle,
          )),
      body: Text('body or any kind of widget here..'),
      verticalPosition: MediaQuery.of(context).size.height * 0.2,
      horizontalPosition: MediaQuery.of(context).size.width * 0.8,
    );
  }
}
