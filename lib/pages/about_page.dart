import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:better_flutter/controller/index.dart';
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
                    title: Text('About.DarkMode.title'.tr),
                  ),
                  content: GFToggle(
                    onChanged: (val) {
                      config.switchModel();
                    },
                    value: config.isDarkMode,
                  ),
                ),
                GFCard(
                  title: GFListTile(
                    title: Text('About.Language.title'.tr),
                  ),
                  content: DropdownButtonHideUnderline(
                    child: GFDropdown(
                      padding: const EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(5),
                      border: const BorderSide(color: Colors.black12, width: 1),
                      dropdownButtonColor: Colors.white,
                      value: config.locale,
                      onChanged: (newValue) {
                        print('${(newValue as Locale).toLanguageTag()}');
                        setState(() {
                          config.onLocaleUpdate(newValue as Locale);
                        });
                      },
                      items: config.languages
                          .map((item) => DropdownMenuItem(
                                child: Text('Label.${item.toLanguageTag()}'.tr),
                                value: item,
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
