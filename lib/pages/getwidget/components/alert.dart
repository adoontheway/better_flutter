import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  Widget? alertWidget;
  bool showBlur = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GFFloatingWidget(
        child: GFAlert(
          title: 'GFAlert Type',
          content:
              'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
          type: GFAlertType.rounded,
          bottombar: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GFButton(
                onPressed: () {
                  setState(() {
                    showBlur = false;
                  });
                },
                shape: GFButtonShape.pills,
                child: Text('Skip', style: TextStyle(color: Colors.black)),
              ),
              SizedBox(width: 5),
              GFButton(
                onPressed: () {
                  setState(() {
                    showBlur = false;
                  });
                },
                shape: GFButtonShape.pills,
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: GFColors.ALT,
                ),
                position: GFPosition.end,
                text: 'Learn More',
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWithMultiButtons() {
    return GFAlert(
      title: 'Welcome !',
      content:
          'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
      bottombar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GFButton(
            onPressed: () {
              setState(() {
                showBlur = false;
              });
            },
            shape: GFButtonShape.pills,
            child: Text('Skip', style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(width: 5),
          GFButton(
            onPressed: () {
              setState(() {
                showBlur = false;
              });
            },
            shape: GFButtonShape.pills,
            icon: Icon(
              Icons.keyboard_arrow_right,
              color: GFColors.ALT,
            ),
            position: GFPosition.end,
            text: 'Learn More',
          ),
        ],
      ),
    );
  }

  Widget _buildNormalAlert() {
    return GFAlert(
      alignment: Alignment.center,
      backgroundColor: Colors.white,
      title: 'Welcome!',
      content:
          'Get Flutter is one of the largest Flutter open-source UI library for mobile or web apps with  1000+ pre-built reusable widgets.',
      type: GFAlertType.rounded,
      bottombar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GFButton(
            onPressed: () {
              setState(() {
                alertWidget = null;
                showBlur = false;
              });
            },
            color: GFColors.LIGHT,
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
