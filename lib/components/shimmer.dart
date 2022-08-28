import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ShimmerPage extends StatelessWidget {
  const ShimmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GFShimmer(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 54,
                      height: 46,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 8,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 8,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 6),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 8,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Text("Shimmer with gradient"),
            GFShimmer(
              child: const Text(
                'GF Shimmer',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
              ),
              showGradient: true,
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.centerLeft,
                stops: const <double>[0, 0.3, 0.6, 0.9, 1],
                colors: [
                  Colors.teal.withOpacity(0.1),
                  Colors.teal.withOpacity(0.3),
                  Colors.teal.withOpacity(0.5),
                  Colors.teal.withOpacity(0.7),
                  Colors.teal.withOpacity(0.9),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
