import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  const AnimatedAlignScreen({super.key});

  @override
  State<AnimatedAlignScreen> createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  AlignmentGeometry _alignmentGeometry = Alignment.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedAlign(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 500),
              alignment: _alignmentGeometry,
              child: Text('Data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_alignmentGeometry == Alignment.center) {
                    _alignmentGeometry = Alignment.topLeft;
                  } else {
                    _alignmentGeometry = Alignment.center;
                  }
                });
              },
              child: Text('Change Alignment  '),
            ),
          ],
        ),
      ),
    );
  }
}
