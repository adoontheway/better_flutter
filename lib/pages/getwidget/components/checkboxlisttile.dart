import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CheckboxListTilePage extends StatefulWidget {
  CheckboxListTilePage({Key? key}) : super(key: key);
  @override
  _CheckboxListTilePageState createState() => _CheckboxListTilePageState();
}

class _CheckboxListTilePageState extends State<CheckboxListTilePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFCheckboxListTile(
            titleText: 'Arthur Shelby',
            subTitleText: 'By order of the peaky blinders',
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/carousel01.jpeg'),
            ),
            size: 25,
            activeBgColor: Colors.green,
            type: GFCheckboxType.circle,
            activeIcon: Icon(
              Icons.check,
              size: 15,
              color: Colors.white,
            ),
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
            value: isChecked,
            inactiveIcon: null,
          ),
        ],
      ),
    );
  }
}
