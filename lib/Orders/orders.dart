 import 'package:flutter/material.dart';

class orders extends StatefulWidget {
  const orders({Key? key}) : super(key: key);

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.9,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.green,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "Past Order",
                //  icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                text: "Upcoming",
                // icon: Icon(Icons.beach_access_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("You do not have any past orders"),
            ),
            Center(
              child: Text("You do not have any past orders"),
            ),
          ],
        ),
      ),
    );
  }
}