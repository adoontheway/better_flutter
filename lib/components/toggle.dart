import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TogglePage extends StatelessWidget {
  const TogglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggel"),
      ),
      body: Center(
        child: Column(
          children: [
            GFToggle(
              onChanged: (val) {},
              value: true,
            ),
            GFToggle(
              enabledText: "ios",
              onChanged: (val) {},
              value: true,
              type: GFToggleType.ios,
            ),
            GFToggle(
              enabledText: "square",
              onChanged: (val) {},
              value: true,
              type: GFToggleType.square,
              enabledThumbColor: GFColors.SUCCESS,
              enabledTrackColor: GFColors.SECONDARY,
            ),
            GFToggle(
              onChanged: (val) {},
              value: true,
              type: GFToggleType.custom,
            ),
          ],
        ),
      ),
    );
  }
}
