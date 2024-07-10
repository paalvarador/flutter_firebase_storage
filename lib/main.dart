import 'package:flutter/material.dart';
import 'package:flutter_firebase_storage/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Firebase Storage App',
      home: HomePage(),
    );
  }
}
