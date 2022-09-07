import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class DropdownPage extends StatefulWidget {
  DropdownPage({Key? key}) : super(key: key);
  @override
  _DropdownPageState createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String? dropdown;

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
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: GFDropdown(
                padding: const EdgeInsets.all(15),
                borderRadius: BorderRadius.circular(5),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.white,
                value: dropdown,
                onChanged: (newValue) {
                  setState(() {
                    dropdown = newValue as String;
                  });
                },
                items: [
                  'Dropdow.Item0'.tr,
                  'Dropdow.Item1'.tr,
                  'Dropdow.Item2'.tr,
                  'Dropdow.Item3'.tr
                ]
                    .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: GFDropdown(
                padding: const EdgeInsets.all(15),
                borderRadius: BorderRadius.circular(10),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.grey[300],
                value: dropdown,
                onChanged: (newValue) {
                  setState(() {
                    dropdown = newValue as String;
                  });
                },
                items: [
                  'Dropdow.Item0'.tr,
                  'Dropdow.Item1'.tr,
                  'Dropdow.Item2'.tr,
                  'Dropdow.Item3'.tr
                ]
                    .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
