import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_best_practice/controller/index.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String? content = '';
  @override
  void initState() {
    super.initState();
    // _loadPackInfo();
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
    ConfigStore config = Get.find<ConfigStore>();
    return SingleChildScrollView(
      child: content == null
          ? const GFLoader()
          : Column(
              children: <Widget>[
                GFCard(
                  title: GFListTile(
                    title: const Text('Dark Mode'),
                  ),
                  content: GFToggle(
                    onChanged: (val) {
                      config.switchModel();
                    },
                    value: config.isDarkMode,
                  ),
                ),
                // GFCard(
                //   title: GFListTile(
                //     title: const Text('Language'),
                //   ),
                //   content: GFToggle(
                //     onChanged: (val) {
                //       config.switchModel();
                //     },
                //     value: config.isDarkMode,
                //   ),
                // ),
              ],
            ),
    );
  }
}
