import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AccordionPage extends StatelessWidget {
  const AccordionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accordion"),
      ),
      body: Center(
        child: Column(
          children: [
            GFAccordion(
              title: 'GF Accordion',
              content:
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
            ),
            GFAccordion(
              title: 'GF Accordion with Icon',
              content:
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
              collapsedIcon: Icon(Icons.add),
              expandedIcon: Icon(Icons.minimize),
            ),
            GFAccordion(
                title: 'GF Accordion with trailing Text',
                content:
                    'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                collapsedIcon: Text('Show'),
                expandedIcon: Text('Hide')),
            GFAccordion(
                title: 'GF Accordion contentChild',
                contentChild: Image.asset('assets/images/carousel01.jpeg'),
                collapsedIcon: Text('Show'),
                expandedIcon: Text('Hide')),
          ],
        ),
      ),
    );
  }
}
