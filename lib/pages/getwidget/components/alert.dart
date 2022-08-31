import 'package:flutter/cupertino.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: GFColors.DARK,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  CupertinoIcons.back,
                  color: GFColors.SUCCESS,
                ),
              )),
          title: const Text(
            'Alert',
            style: TextStyle(fontSize: 17),
          ),
          centerTitle: true,
        ),
        body: GFFloatingWidget(
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
        )),
        // body: GFFloatingWidget(
        //   verticalPosition: 150,
        //   showBlurness: showBlur,
        //   child: alertWidget,
        //   body: Column(
        //     children: [
        //       Container(
        //         margin: const EdgeInsets.only(top: 20),
        //         color: Colors.transparent,
        //         child: Center(
        //           child: GFButton(
        //               text: 'Tap to View',
        //               onPressed: () {
        //                 setState(() {
        //                   showBlur = true;
        //                   alertWidget =//_buildNormalAlert();
        //                       // _buildWithMultiButtons();
        //                 });
        //               }),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
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
