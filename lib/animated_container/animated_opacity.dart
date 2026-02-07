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
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(milliseconds: 500),
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_opacity == 0) {
                  _opacity = 1;
                } else {
                  _opacity = 0;
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
