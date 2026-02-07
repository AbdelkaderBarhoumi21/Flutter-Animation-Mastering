import 'package:flutter/material.dart';

class AnimatedScaleScreen extends StatefulWidget {
  const AnimatedScaleScreen({super.key});

  @override
  State<AnimatedScaleScreen> createState() => _AnimatedScaleScreenState();
}

class _AnimatedScaleScreenState extends State<AnimatedScaleScreen> {
  double _scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedScale(
              duration: const Duration(seconds: 1),
              filterQuality: FilterQuality
                  .low, // Like blur effect when the image is scaled up, and it will be more clear when the image is scaled down
              scale: _scale,
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                // Size 100 and scale 1 means 100*1 = 100, and when scale is 2, it will be 100*2 = 200
                child: FlutterLogo(size: 100),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _scale = _scale == 1 ? 5 : 1;
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
