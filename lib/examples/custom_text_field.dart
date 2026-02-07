import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.isClicked,required this.onTap});
  final bool isClicked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isClicked ? 500 : 100,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),

      duration: Duration(seconds: 1),
      child: TextField(
        onTap: onTap,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefix: Icon(Icons.search),
        ),
      ),
    );
  }
}
