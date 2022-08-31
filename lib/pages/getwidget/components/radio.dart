import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key? key}) : super(key: key);
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Normal'),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFRadio(
                    size: GFSize.LARGE,
                    activeBorderColor: GFColors.SUCCESS,
                    value: 0,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    radioColor: GFColors.SUCCESS,
                  ),
                  GFRadio(
                    size: GFSize.MEDIUM,
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    activeBorderColor: GFColors.SUCCESS,
                    radioColor: GFColors.SUCCESS,
                  ),
                  GFRadio(
                    size: GFSize.SMALL,
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    activeBorderColor: GFColors.SUCCESS,
                    radioColor: GFColors.SUCCESS,
                  ),
                  GFRadio(
                    size: 20,
                    value: 3,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    activeBorderColor: GFColors.SUCCESS,
                    radioColor: GFColors.SUCCESS,
                  )
                ],
              ),
            ),
            const Text('Square'),
            GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.LARGE,
                  value: 4,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.MEDIUM,
                  value: 5,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: GFSize.SMALL,
                  value: 6,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.square,
                  size: 20,
                  value: 7,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  radioColor: GFColors.SUCCESS,
                  activeIcon: Icon(Icons.close),
                ),
              ],
            )),
            const Text('Custom'),
            GFCard(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GFRadio(
                      type: GFRadioType.blunt,
                      size: GFSize.LARGE,
                      activeBorderColor: GFColors.SUCCESS,
                      value: 8,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value as int;
                        });
                      },
                      inactiveIcon: null,
                      customBgColor: GFColors.SUCCESS),
                  GFRadio(
                    type: GFRadioType.blunt,
                    size: GFSize.MEDIUM,
                    value: 9,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    activeBorderColor: GFColors.SUCCESS,
                    customBgColor: GFColors.SUCCESS,
                  ),
                  GFRadio(
                    type: GFRadioType.blunt,
                    size: GFSize.SMALL,
                    value: 10,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    activeBorderColor: GFColors.SUCCESS,
                    customBgColor: GFColors.SUCCESS,
                  ),
                  GFRadio(
                    type: GFRadioType.blunt,
                    size: 25,
                    value: 11,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value as int;
                      });
                    },
                    inactiveIcon: null,
                    activeBorderColor: GFColors.SUCCESS,
                    customBgColor: GFColors.SUCCESS,
                  )
                ],
              ),
            ),
            const Text('Custom 2'),
            GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GFRadio(
                  type: GFRadioType.custom,
                  activeIcon: Icon(Icons.check),
                  radioColor: Colors.red,
                  size: GFSize.LARGE,
                  activeBgColor: GFColors.SUCCESS,
                  inactiveBorderColor: GFColors.DARK,
                  activeBorderColor: GFColors.SUCCESS,
                  value: 12,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                ),
                GFRadio(
                  type: GFRadioType.custom,
                  activeIcon: Icon(Icons.sentiment_satisfied),
                  size: GFSize.MEDIUM,
                  value: 13,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: Icon(Icons.sentiment_dissatisfied),
                  customBgColor: GFColors.WARNING,
                  activeBgColor: GFColors.SUCCESS,
                  activeBorderColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: GFSize.SMALL,
                  value: 14,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  customBgColor: GFColors.SUCCESS,
                  activeBorderColor: GFColors.SUCCESS,
                ),
                GFRadio(
                  type: GFRadioType.blunt,
                  size: 25,
                  value: 15,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value as int;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: GFColors.SUCCESS,
                  customBgColor: GFColors.SUCCESS,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
