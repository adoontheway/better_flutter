import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          content: 'GetFlutter.desc2'.tr,
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
                child: Text('Label.Skip'.tr,
                    style: TextStyle(color: Colors.black)),
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
                text: 'Label.LearnMore'.tr,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWithMultiButtons() {
    return GFAlert(
      title: 'Title.Welcome'.tr,
      content: 'GetFlutter.desc2'.tr,
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
            child: Text('Label.Skip'.tr, style: TextStyle(color: Colors.black)),
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
            text: 'Label.LearnMore'.tr,
          ),
        ],
      ),
    );
  }

  Widget _buildNormalAlert() {
    return GFAlert(
      alignment: Alignment.center,
      backgroundColor: Colors.white,
      title: 'Title.Welcome'.tr,
      content: 'GetFlutter.desc2'.tr,
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
            child: Text(
              'Label.Close'.tr,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
