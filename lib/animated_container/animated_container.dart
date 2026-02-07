import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 100;
  double _height = 100;
  double _radius = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,

              onEnd: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Animation Completed')));
              },
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(_radius),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_height == 200) {
                  _height = 100;
                  _width = 100;
                  _radius = 5;
                } else {
                  _height = 200;
                  _width = 200;
                  _radius = 40;
                }
                setState(() {});
              },
              child: Text('Change Size'),
            ),
          ],
        ),
      ),
    );
  }
}
