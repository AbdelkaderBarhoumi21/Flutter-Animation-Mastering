import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  double _padding = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: AnimatedPadding(
                curve: Curves.easeInOut,
                onEnd: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Animation Ended')),
                  );
                },
                duration: const Duration(seconds: 1),
                padding: EdgeInsets.all(_padding),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: FlutterLogo(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _padding = _padding == 10 ? 50 : 10;
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
