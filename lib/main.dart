import 'package:flutter/material.dart';
import 'package:taxi_app/screens/home.dart';

void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
