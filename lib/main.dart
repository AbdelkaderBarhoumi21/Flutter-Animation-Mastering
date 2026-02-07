import 'package:flutter/material.dart';
import 'package:flutter_animation_mastering/animated_container/animated_container.dart';
import 'package:flutter_animation_mastering/animated_container/animated_opacity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mastering Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  AnAnimatedOpacityScreen(),
    );
  }
}
