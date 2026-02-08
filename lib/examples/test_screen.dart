import 'package:flutter/material.dart';
import 'package:flutter_animation_mastering/examples/custom_button_login.dart';
import 'package:flutter_animation_mastering/examples/custom_text_field.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool _isLoading = false;
  bool _isClicked = false;
  bool _isExpanded = false;
  bool _isMoving = false;
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                isClicked: _isClicked,
                onTap: () {
                  setState(() {
                    _isClicked = !_isClicked;
                  });
                },
              ),
              SizedBox(height: 20),
              CustomButtonLogin(
                isLoading: _isLoading,
                onPressed: () {
                  setState(() {
                    _isLoading = !_isLoading;
                  });
                  Future.delayed(Duration(seconds: 3)).then((value) {
                    if (!mounted) return;
                    setState(() {
                      _isLoading = false;
                    });
                  });
                },
              ),

              SizedBox(height: 40),

              InkWell(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/marker.png',
                      width: _isExpanded ? 200 : 100,
                      height: _isExpanded ? 200 : 100,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              if (_isExpanded)
                Text(
                  'This is a marker image. Tap on it to see the animation.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),

              SizedBox(height: 20),

              Stack(
                children: [
                  Image.asset(
                    'assets/marker.png',
                    width: 100,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  AnimatedPositioned(
                    top: _isMoving ? 200 : 0,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,

                    child: Container(
                      color: Colors.red,
                      height: 200,
                      width: 100,
                      alignment: Alignment.center,
                      child: Text("Blur"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isMoving = !_isMoving;
                  });
                },
                child: Text('Ok'),
              ),

              SizedBox(height: 20),
              GestureDetector(
                onPanStart: (details) {
                  print('Pan Start: ${details.globalPosition}');
                  setState(() {
                    _isPressed = true;
                  });
                },
                onPanEnd: (details) {
                  print('Pan End: ${details.velocity}');
                  setState(() {
                    _isPressed = false;
                  });
                },
                onTap: () {},
                child: AnimatedScale(
                  duration: Duration(milliseconds: 800),
                  scale: _isPressed ? 0.8 : 1,
                  child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text('Press Me'),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text('Info about the button. Tap and hold to see the animation.'),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  setState(() {
                    _isPressed = !_isPressed;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  padding: EdgeInsets.all(8),
                  color: Colors.blue,
                  width: double.infinity,
                  height: _isPressed == true ? 100 : 50,
                  child: Text(
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
