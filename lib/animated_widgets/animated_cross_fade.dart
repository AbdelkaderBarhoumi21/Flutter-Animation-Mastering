import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red[300],
          height: 300,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(milliseconds: 800),
                firstChild: Text('Data'),
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,
                secondChild: FlutterLogo(),
                crossFadeState: _showFirst == true
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,

                layoutBuilder:
                    (
                      firstChild,
                      firstChildKey,
                      secondChild,
                      secondChildChildKey,
                    ) {
                      return Column(
                        children: [
                          Text('X'),
                          firstChild,
                          Text('Y'),
                          secondChild,
                          Text('Z'),
                        ],
                      );
                    },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showFirst = !_showFirst;
                  });
                },
                child: Text('Change'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
