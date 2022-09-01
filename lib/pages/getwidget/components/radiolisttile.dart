import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class RadioListTilePage extends StatefulWidget {
  RadioListTilePage({Key? key}) : super(key: key);
  @override
  _RadioListTilePageState createState() => _RadioListTilePageState();
}

class _RadioListTilePageState extends State<RadioListTilePage> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFRadioListTile(
            titleText: 'Arthur Shelby',
            subTitleText: 'By order of the peaky blinders',
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/carousel01.jpeg'),
            ),
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 0,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
            // position: GFPosition.start, // 设置为start的时候会顶掉avatar
          ),
          GFRadioListTile(
            titleText: 'Arthur Shelby',
            subTitle: const Text('By order of the peaky blinders'),
            avatar: GFAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
            size: 25,
            activeBorderColor: Colors.green,
            focusColor: Colors.green,
            type: GFRadioType.square,
            value: 1,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
            inactiveIcon: null,
          ),
        ],
      ),
    );
  }
}
