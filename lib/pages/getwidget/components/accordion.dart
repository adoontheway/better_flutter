import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AccordionPage extends StatelessWidget {
  const AccordionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GFAccordion(
            title: 'Accordion.title1'.tr,
            content: 'GetFlutter.desc1'.tr,
          ),
          GFAccordion(
            title: 'Accordion.title2'.tr,
            content: 'GetFlutter.desc1'.tr,
            collapsedIcon: Icon(Icons.add),
            expandedIcon: Icon(Icons.minimize),
          ),
          GFAccordion(
              title: 'Accordion.title3'.tr,
              content: 'GetFlutter.desc1'.tr,
              collapsedIcon: Text('Show'),
              expandedIcon: Text('Hide')),
          GFAccordion(
              title: 'Accordion.title4'.tr,
              contentChild: Image.asset('assets/images/carousel01.jpg'),
              collapsedIcon: Text('Show'),
              expandedIcon: Text('Hide')),
        ],
      ),
    );
  }
}
