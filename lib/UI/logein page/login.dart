import 'package:flutter/material.dart';
import 'package:toterstask/UI/logein%20page/newaccount.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ]),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15, bottom: 8),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(
                              Icons.language,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "Language",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'baloo',
                                color: Colors.black),
                          ),
                          SizedBox(height: 5,)
                        ],
                      ),
                      SizedBox(width: 25,),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15, bottom: 8),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(
                              Icons.headset_mic_outlined,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "Support",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'baloo',
                                color: Colors.black),
                          ),
                          SizedBox(height: 5,)
                        ],
                      ),
                      Spacer(),

                    ],
                  ),
                ),
              ),
            ),
            Center(
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15,left: 15),
                          child: Text(
                            "Help Center",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'baloo',
                                color: Colors.black),
                          ),
                        ),
                        option(Icons.handyman_outlined, "Legal", false),
                        Center(
                          child: Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width - 70,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                        option(Icons.help_outline, "Feg", false),
                      ],
                    ),
                  ),
                )),
            Center(
                child: Expanded(
                  child:
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.login,
                                  size: 35,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Log in/Sign up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily: 'baloo',
                                      color: Colors.green),
                                ),
                              ],
                            ),)
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>newaccount()));
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
  Padding option(var icon, String name, bool x) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.black54,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'baloo',
                color: Colors.black),
          ),
          Spacer(),
          (x == true)
              ? Text(
            "IQD 0",
            style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )
              : SizedBox(
            width: 0,
          )
        ],
      ),
    );
  }
}
