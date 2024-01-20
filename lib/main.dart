import 'package:flutter/material.dart';

import 'baktiPage.dart';
import 'listCard-exercise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF6F6F6),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff2C3280)),
        useMaterial3: true,
      ),
      home: const BaktiPages(),
    );
  }
}





