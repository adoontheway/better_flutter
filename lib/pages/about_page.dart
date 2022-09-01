import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String? content;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  _loadPackInfo() async {
    final _loadedData =
        await rootBundle.loadString('assets/confs/packinfo.conf');
    setState(() {
      content = _loadedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          GFCard(
            title: GFListTile(
              titleText: "About.packinfo.title".tr,
            ),
            content: content == null ? GFLoader() : Markdown(data: content!),
          )
        ],
      ),
    );
  }
}
