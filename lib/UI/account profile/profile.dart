import 'package:flutter/material.dart';
import 'package:toterstask/UI/logein%20page/accountData.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
              child: Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              "${newName}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'baloo',
                  color: Colors.black),
            ),
          ))),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 45,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.redeem,
                      size: 30,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            "Green",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'baloo',
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "0 Pts",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'baloo',
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              Center(
                child: Expanded(
                  child: Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                                Icons.manage_accounts_outlined,
                                size: 30,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'baloo',
                                  color: Colors.black),
                            ),
                            SizedBox(height: 5,)
                          ],
                        ),
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
                                Icons.credit_card,
                                size: 30,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "Payments",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'baloo',
                                  color: Colors.black),
                            ),
                            SizedBox(height: 5,)
                          ],
                        ),
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
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Expanded(
                    child: Container(
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
                              "Toters Cash",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'baloo',
                                  color: Colors.black),
                            ),
                          ),
                          option(Icons.account_balance_wallet_outlined, "Wallet", true),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.add, "Add Funds", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.arrow_forward, "Send Funds", false),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Expanded(
                    child: Container(
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
                              "Promotions",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'baloo',
                                  color: Colors.black),
                            ),
                          ),
                          option(Icons.verified_outlined, "Credits", true),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.sell_outlined, "Add Promo Code", false),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Expanded(
                    child: Container(
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
                              "Account Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'baloo',
                                  color: Colors.black),
                            ),
                          ),
                          option(Icons.notifications_none_outlined, "Notifications", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.location_on_outlined, "Addresses", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.favorite_border, "Favorite", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.tune_outlined, "Preferences", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.person_search_outlined, "Favorite", false),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Expanded(
                    child: Container(
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
                          option(Icons.headset_mic_outlined, "Get Support", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          option(Icons.chat_outlined, "Support Tickets", false),
                          Center(
                            child: Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width - 70,
                              color: Colors.grey.withOpacity(0.3),
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
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Expanded(
                    child: Container(
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
                                  Icons.logout,
                                  size: 35,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Sing out",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontFamily: 'baloo',
                                      color: Colors.red),
                                ),
                              ],
                            ),)
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 20,)
            ],
          );
        }

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
