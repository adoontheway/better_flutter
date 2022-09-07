import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late Animation<Offset> offsetAnimation;

  bool selected = false;

  late AnimationController controller1;
  late Animation<double> animation1;

  late AnimationController controller2;
  late Animation<double> animation2;
  double _fontSize = 30;

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = new CurvedAnimation(parent: controller, curve: Curves.linear);
    offsetAnimation = Tween<Offset>(
      begin: Offset(-5, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    ));
    controller.repeat();

    controller1 =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation1 = new CurvedAnimation(parent: controller, curve: Curves.linear);
    controller1.repeat();

    controller2 =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation2 = new CurvedAnimation(parent: controller, curve: Curves.linear);
    controller2.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              controller.repeat();
            },
            child: GFAnimation(
              turnsAnimation: animation,
              controller: controller,
              // type: GFAnimationType.rotateTransition,
              type: GFAnimationType.scaleTransition,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/avatar.jpeg',
                width: 80,
                height: 80,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: GFAnimation(
              controller: controller,
              slidePosition: offsetAnimation,
              type: GFAnimationType.slideTransition,
              child: Image.asset(
                'assets/images/avatar.jpeg',
                width: 80,
                height: 80,
              ),
            ),
          ),
          GFAnimation(
            onTap: () {
              if (mounted) {
                setState(() {
                  selected = !selected;
                });
              }
            },
            width: selected ? 100 : 50,
            height: selected ? 100 : 50,
            type: GFAnimationType.size,
            controller: controller1,
            child: Image.asset(
              'assets/images/carousel01.jpg',
              width: 80,
              height: 80,
            ),
          ),
          GFAnimation(
            width: 50,
            changedWidth: 100,
            height: 50,
            changedHeight: 100,
            activeColor: Colors.transparent,
            color: Colors.transparent,
            fontSize: _fontSize,
            type: GFAnimationType.container,
            child: Image.asset(
              'assets/images/carousel02.jpg',
              width: 80,
              height: 80,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GFShimmer(
            child: Text(
              "Touch Image to Start Animation",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
