import 'package:age_calculator/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Age calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const AgeCalculator(),
    );
  }
}
