import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class RatingPage extends StatefulWidget {
  RatingPage({Key? key}) : super(key: key);
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double _rating = 3;
  final _ratingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ratingController.text = '$_rating';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFRating(
            value: _rating,
            color: GFColors.SUCCESS,
            borderColor: GFColors.SUCCESS,
            onChanged: onRateChange,
          ),
          const Text("With Text"),
          GFRating(
            value: _rating,
            onChanged: (value) {},
            showTextForm: true,
            controller: _ratingController,
            suffixIcon: GFButton(
              type: GFButtonType.transparent,
              onPressed: () {
                setState(() {
                  _rating = double.parse(_ratingController.text);
                });
              },
              child: const Text('Rate'),
            ),
          ),
        ],
      ),
    );
  }

  onRateChange(value) {
    setState(() {
      _rating = value;
      _ratingController.text = '$_rating';
    });
  }
}
