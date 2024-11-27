import 'package:flutter/material.dart';
import 'package:foodgo/taps/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodGo',
      home: HomeTap(),
    );
  }
}