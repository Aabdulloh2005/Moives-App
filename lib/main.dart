import 'package:flutter/material.dart';
import 'package:homework/pages/home_page.dart';
import 'package:homework/screens/second_page.dart';
import 'package:homework/screens/third_page.dart';

void main(List<String> args) {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomePage()
    );
  }
}
