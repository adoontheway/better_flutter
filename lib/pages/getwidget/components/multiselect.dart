import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MultiSelectPage extends StatefulWidget {
  MultiSelectPage({Key? key}) : super(key: key);
  @override
  _MultiSelectPageState createState() => _MultiSelectPageState();
}

class _MultiSelectPageState extends State<MultiSelectPage> {
  String? dropdown;
  List<String> dropList = [
    'FC Barcelona',
    'Real Madrid',
    'Villareal',
    'Manchester City'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFMultiSelect(
            items: dropList,
            onSelect: (value) {
              print('selected $value ');
            },
            dropdownTitleTileText: 'Messi, Griezmann, Coutinho ',
            dropdownTitleTileMargin:
                EdgeInsets.only(top: 22, left: 18, right: 18, bottom: 5),
            dropdownTitleTilePadding: EdgeInsets.all(10),
            dropdownUnderlineBorder:
                const BorderSide(color: Colors.transparent, width: 2),
            dropdownTitleTileBorder: Border.all(color: Colors.grey, width: 1),
            dropdownTitleTileBorderRadius: BorderRadius.circular(5),
            expandedIcon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black54,
            ),
            collapsedIcon: const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.black54,
            ),
            submitButton: Text('OK'),
            cancelButton: Text('Cancel'),
            dropdownTitleTileTextStyle:
                const TextStyle(fontSize: 14, color: Colors.black54),
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.all(6),
            type: GFCheckboxType.basic,
            activeBgColor: GFColors.SUCCESS,
            activeBorderColor: GFColors.SUCCESS,
            inactiveBorderColor: Colors.grey,
          ),
          Container(
            child: GFMultiSelect(
              items: dropList,
              onSelect: (value) {
                print('selected $value ');
              },
              dropdownTitleTileText: 'Messi, Griezmann, Coutinho ',
              dropdownTitleTileColor: Colors.grey[200],
              dropdownTitleTileMargin:
                  EdgeInsets.only(top: 22, left: 18, right: 18, bottom: 5),
              dropdownTitleTilePadding: EdgeInsets.all(10),
              dropdownUnderlineBorder:
                  const BorderSide(color: Colors.transparent, width: 2),
              dropdownTitleTileBorder: Border.all(color: Colors.grey, width: 1),
              dropdownTitleTileBorderRadius: BorderRadius.circular(5),
              expandedIcon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black54,
              ),
              collapsedIcon: const Icon(
                Icons.keyboard_arrow_up,
                color: Colors.black54,
              ),
              submitButton: Text('OK'),
              dropdownTitleTileTextStyle:
                  const TextStyle(fontSize: 14, color: Colors.black54),
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.all(6),
              type: GFCheckboxType.basic,
              activeBgColor: Colors.green.withOpacity(0.5),
              inactiveBorderColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
