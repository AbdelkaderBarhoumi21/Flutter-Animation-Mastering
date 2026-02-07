import 'package:flutter/material.dart';

class AnimatedPositionScreen extends StatefulWidget {
  const AnimatedPositionScreen({super.key});

  @override
  State<AnimatedPositionScreen> createState() => _AnimatedPositionScreenState();
}

class _AnimatedPositionScreenState extends State<AnimatedPositionScreen> {
  double _top = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(height: 200, width: 200, color: Colors.blue),
                AnimatedPositioned(
                  curve: Curves.easeInOut,
                  duration: const Duration(seconds: 1),
                  top: _top,
                  left: 20,
                  child: FlutterLogo(size: 50),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _top = _top == 50 ? 100 : 50;
                });
              },
              child: const Text('Change Position'),
            ),
          ],
        ),
      ),
    );
  }
}
