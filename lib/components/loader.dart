import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loader"),
      ),
      body: Center(
        child: Column(
          children: [
            GFLoader(),
            GFLoader(
              type: GFLoaderType.ios,
            ),
            GFLoader(
              type: GFLoaderType.circle,
            ),
            GFLoader(
              type: GFLoaderType.square,
            ),
            GFLoader(
              type: GFLoaderType.custom,
              child: Image.asset(
                'assets/images/carousel01.jpeg',
                width: 200,
                height: 200,
              ),
            ),
            GFLoader(
              type: GFLoaderType.custom,
              loaderIconOne: Icon(Icons.insert_emoticon),
              loaderIconTwo: Icon(Icons.insert_emoticon),
              loaderIconThree: Icon(Icons.insert_emoticon),
            ),
            GFLoader(
              type: GFLoaderType.custom,
              loaderIconOne: Text('Please'),
              loaderIconTwo: Text('Wait'),
              loaderIconThree: Text('A moment'),
            )
          ],
        ),
      ),
    );
  }
}
