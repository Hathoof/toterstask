import 'package:flutter/material.dart';
import 'package:toterstask/UI/splashScreen/splash.dart';
import 'bottomNavigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  splash(),
    );
  }
}
