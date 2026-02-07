import 'package:flutter/material.dart';

class AnAnimatedOpacityScreen extends StatefulWidget {
  const AnAnimatedOpacityScreen({super.key});

  @override
  State<AnAnimatedOpacityScreen> createState() =>
      _AnAnimatedOpacityScreenState();
}

class _AnAnimatedOpacityScreenState extends State<AnAnimatedOpacityScreen> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Only opacity will be animated(opacity), not the child widget(the container in this case(width, height, color))
            AnimatedOpacity(
              opacity: _opacity,
              curve: Curves.bounceInOut,
              onEnd: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Animation Ended')));
              },
              duration: Duration(milliseconds: 1000),
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_opacity == 0) {
                  _opacity = 1;
                } else {
                  _opacity = 0.5;
                }
                setState(() {});
              },
              child: Text('Change Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
