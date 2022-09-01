import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ProgressBarPage extends StatelessWidget {
  const ProgressBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Normal"),
          GFProgressBar(
            width: 500,
            lineHeight: 20,
            percentage: 0.9,
            backgroundColor: Colors.black26,
            progressBarColor: GFColors.DANGER,
          ),
          const Text("Circle"),
          SizedBox(
            height: 50,
          ),
          GFProgressBar(
            percentage: 0.9,
            width: 100,
            radius: 90,
            type: GFProgressType.circular,
            backgroundColor: Colors.black26,
            progressBarColor: GFColors.DANGER,
          ),
          const Text("With Child"),
          SizedBox(
            height: 50,
          ),
          GFProgressBar(
            width: 500,
            percentage: 0.5,
            lineHeight: 20,
            child: const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Text(
                '50%',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            backgroundColor: Colors.black26,
            progressBarColor: GFColors.WARNING,
          ),
          const Text("With leading and trailing icon"),
          SizedBox(
            height: 50,
          ),
          GFProgressBar(
            width: 500,
            percentage: 0.8,
            lineHeight: 20,
            alignment: MainAxisAlignment.spaceBetween,
            child: const Text(
              '80%',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            leading: Icon(Icons.sentiment_dissatisfied, color: GFColors.DANGER),
            trailing: Icon(Icons.sentiment_satisfied, color: GFColors.SUCCESS),
            backgroundColor: Colors.black26,
            progressBarColor: GFColors.INFO,
          )
        ],
      ),
    );
  }
}
