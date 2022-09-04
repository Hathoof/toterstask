import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toterstask/Orders/orders.dart';
import 'package:toterstask/account%20profile/profile.dart';
import 'package:toterstask/envoy/envoy.dart';
import 'package:toterstask/firsthomepage/firsthomepage.dart';
import 'package:toterstask/firsthomepage/firsthomepage.dart';
import 'package:toterstask/foodDetalis/foodDetalis.dart';
import 'package:toterstask/foodprofile/foodprofile.dart';
import 'package:toterstask/search/search.dart';


class MainNav extends StatefulWidget {
  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    firsthomepage(),
    search(),
    envoy(),
    orders(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 3,
              activeColor: Colors.green.withOpacity(1),
              iconSize: 20,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              duration: Duration(milliseconds: 200),
              tabBackgroundColor: Colors.white,
              color: Colors.grey,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'search',
                ),
                GButton(
                  icon: Icons.restaurant,
                  text: 'Delevary',
                ),
                GButton(
                  icon: Icons.library_books_outlined,
                  text: 'Orders',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
