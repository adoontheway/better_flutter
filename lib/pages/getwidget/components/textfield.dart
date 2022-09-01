import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TextfieldPage extends StatelessWidget {
  TextfieldPage({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GFTextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: "default hint text here",
            ),
          ),
          GFTextFieldPill(
            editingbordercolor: Colors.green,
            idlebordercolor: Colors.grey,
            borderwidth: 1,
            hintText: 'this is textfield pill',
          ),
          GFTextFieldRounded(
            editingbordercolor: Colors.green,
            idlebordercolor: Colors.grey,
            borderwidth: 1.0,
            cornerradius: 10,
            hintText: 'this is textfield rounded',
          ),
          GFTextFieldSquared(
            editingbordercolor: Colors.green,
            idlebordercolor: Colors.grey,
            borderwidth: 1.0,
            hintText: 'this is textfield quare',
          ),
        ],
      ),
    );
  }
}
