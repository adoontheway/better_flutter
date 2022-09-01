import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key? key}) : super(key: key);
  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Normal'),
          GFCheckbox(
            size: GFSize.SMALL,
            activeBgColor: GFColors.DANGER,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
            value: isChecked,
          ),
          GFCard(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFCheckbox(
                  size: GFSize.SMALL,
                  activeBgColor: GFColors.DANGER,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                GFCheckbox(
                  activeBgColor: GFColors.SECONDARY,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                GFCheckbox(
                  size: GFSize.LARGE,
                  activeBgColor: GFColors.SUCCESS,
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
          ),
          const Text('Squre'),
          GFCard(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFCheckbox(
                  size: GFSize.SMALL,
                  activeBgColor: GFColors.DANGER,
                  type: GFCheckboxType.square,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                GFCheckbox(
                  type: GFCheckboxType.square,
                  activeBgColor: GFColors.SECONDARY,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                GFCheckbox(
                  size: GFSize.LARGE,
                  activeBgColor: GFColors.SUCCESS,
                  type: GFCheckboxType.square,
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
          ),
          const Text('Circle'),
          GFCard(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFCheckbox(
                  size: GFSize.SMALL,
                  activeBgColor: GFColors.DANGER,
                  type: GFCheckboxType.circle,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                GFCheckbox(
                  type: GFCheckboxType.circle,
                  activeBgColor: GFColors.SECONDARY,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                ),
                GFCheckbox(
                  activeBgColor: GFColors.SUCCESS,
                  size: GFSize.LARGE,
                  type: GFCheckboxType.circle,
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
          ),
          const Text('Custom'),
          GFCard(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.custom,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                GFCheckbox(
                  type: GFCheckboxType.square,
                  activeBgColor: GFColors.SECONDARY,
                  activeIcon: Icon(Icons.sentiment_satisfied),
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                ),
                GFCheckbox(
                  size: GFSize.MEDIUM,
                  type: GFCheckboxType.custom,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  customBgColor: GFColors.INFO,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
