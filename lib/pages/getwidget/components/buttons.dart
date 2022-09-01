import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                onPressed: () {},
                text: "type:outline",
                type: GFButtonType.outline,
              ),
              GFButton(
                onPressed: () {},
                text: "type:solid",
                type: GFButtonType.solid,
              ),
              GFButton(
                onPressed: () {},
                text: "type:outline2x",
                type: GFButtonType.outline2x,
              ),
              GFButton(
                onPressed: () {},
                text: "type:transparent",
                type: GFButtonType.transparent,
              ),
            ],
          ),
          GFButton(
            onPressed: () {},
            text: "blockButton",
            blockButton: true,
          ),
          GFButton(
            onPressed: () {},
            text: "fullWidthButton",
            fullWidthButton: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                onPressed: () {},
                text: "shape:standard",
                shape: GFButtonShape.standard,
              ),
              GFButton(
                onPressed: () {},
                text: "shape:pills",
                shape: GFButtonShape.pills,
              ),
              GFButton(
                onPressed: () {},
                text: "shape:pills,type:outline",
                shape: GFButtonShape.pills,
                type: GFButtonType.outline,
              ),
              GFButton(
                onPressed: () {},
                text: "shape:square",
                shape: GFButtonShape.square,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                onPressed: () {},
                text: "size:SMALL",
                size: GFSize.SMALL,
              ),
              GFButton(
                onPressed: () {},
                text: "size:MEDIUM",
                size: GFSize.MEDIUM,
              ),
              GFButton(
                onPressed: () {},
                text: "size:LARGE",
                size: GFSize.LARGE,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                onPressed: () {},
                text: "color:PRIMARY",
                color: GFColors.PRIMARY,
              ),
              GFButton(
                onPressed: () {},
                text: "color:SECONDARY",
                color: GFColors.SECONDARY,
              ),
              GFButton(
                onPressed: () {},
                text: "color:ALT",
                color: GFColors.ALT,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFIconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
                color: GFColors.PRIMARY,
              ),
              GFButton(
                onPressed: () {},
                text: "color:SECONDARY",
                icon: Icon(Icons.share_outlined),
                color: GFColors.SECONDARY,
              ),
            ],
          ),
          SizedBox(
            child: const Text('Social button'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                onPressed: () {},
                text: "primary",
                icon: Icon(Icons.facebook),
              ),
              GFButton(
                onPressed: null,
                text: "primary",
                icon: Icon(Icons.facebook),
              ),
              GFButton(
                onPressed: () {},
                text: "primary",
                icon: Icon(Icons.facebook),
                type: GFButtonType.outline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
