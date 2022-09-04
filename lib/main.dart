import 'package:flutter/material.dart';
import 'package:toterstask/firsthomepage/firsthomepage.dart';
import 'package:toterstask/foodprofile/foodprofile.dart';

import 'bottomNavigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainNav(),
    );
  }
}
