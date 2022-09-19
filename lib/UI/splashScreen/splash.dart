import 'package:flutter/material.dart';
import 'package:toterstask/bottomNavigationbar.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainNav()));
  }
  void initState(){
    // TODO: implement initState
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network("https://images.squarespace-cdn.com/content/v1/570b5c4162cd9478edc625af/1587042359495-DT89KU48IBU7YDMOQ89Z/LOGO+GREEN-01.png"),
      ),
    );
  }
}
