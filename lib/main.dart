import 'package:flutter/material.dart';
import 'package:flutter_animation_mastering/animated_container/animated_align.dart';
import 'package:flutter_animation_mastering/animated_container/animated_container.dart';
import 'package:flutter_animation_mastering/animated_container/animated_opacity.dart';
import 'package:flutter_animation_mastering/animated_container/animated_padding.dart';
import 'package:flutter_animation_mastering/animated_container/animated_position.dart';
import 'package:flutter_animation_mastering/animated_container/animated_scale.dart';
import 'package:flutter_animation_mastering/examples/test_screen.dart';
import 'package:flutter_animation_mastering/examples/test_screen_2.dart';
import 'package:flutter_animation_mastering/examples/test_screen_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mastering Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TestScreen3(),
    );
  }
}
