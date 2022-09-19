import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:toterstask/UI/search/dataForSearch.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  Future getData() async{
    var cat1=Uri.parse("http://localhost:4000/show/offer");

    Response response1= await get(cat1);


    String body1 =response1.body;

    ofersimages.clear();
    ofername.clear();
    oferdescrption.clear();
    ofernumber.clear();

    List<dynamic> list1=json.decode(body1);

    for(int i=0 ; i<list1.length ; i++){
      print(list1[i]['images']);
      print(list1[i]['name']);
      print(list1[i]['Descrption']);
      print(list1[i]['number']);
      setState(() {
        ofersimages.add(list1[i]['images']);
        ofername.add(list1[i]['name']);
        oferdescrption.add(list1[i]['Descrption']);
        ofernumber.add(list1[i]['number']);

      });
    }
  }

  void initState(){
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.white,
          leading:  Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(Icons.search,size: 30,color: Colors.black54,),
          ),
          title: Text("Search for stors or itme",
            style: TextStyle(fontSize: 16,color: Colors.grey),),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index){
            return  Column(
              children: [
                Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF00b290),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("images/moto.jpg"))
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Order Anything!",
                            style: TextStyle(fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text("new on Toters! If it fits on ",
                            style: TextStyle(fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                          Text("a motorbike we can dilver it.!",
                            style: TextStyle(fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    ],
                  ),
                ),

                Container(
                  height: 480,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index){
                        return list(
                            ofersimages[index],
                            ofername[index],
                            oferdescrption[index],
                            ofernumber[index]);
                      }
                  ),
                ),

              ],
            );
          },
        )
    );
  }
  Card list(
      String images,
      String name,
      String Descr,
      String num,
      ){
    return Card(
      elevation: 0,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5,right: 10),
            height:115,
            width: 155,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(images))
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,
                style: TextStyle(fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),),
              SizedBox(height: 6,),
              Text(Descr,
                style: TextStyle(fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),),
              SizedBox(height: 6,),
              Text("$num Stores",
                style: TextStyle(fontSize: 11,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    );
  }
}
