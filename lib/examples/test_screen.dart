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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  setState(() {
                    _isLoading = false;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
