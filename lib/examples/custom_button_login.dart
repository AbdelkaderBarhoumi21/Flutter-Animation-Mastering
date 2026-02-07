import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    
      width: isLoading ? 100 : 400,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        child: isLoading ? CircularProgressIndicator() : Text("Login"),
      ),
    );
  }
}
