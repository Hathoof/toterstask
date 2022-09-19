import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:http/http.dart';
import 'package:toterstask/UI/firsthomepage/dataforhome.dart';
import 'package:toterstask/UI/foodprofile/foodprofile.dart';
import 'package:toterstask/bottomNavigationbar.dart';
class firsthomepage extends StatefulWidget {
  @override
  State<firsthomepage> createState() => _firsthomepageState();
}

class _firsthomepageState extends State<firsthomepage> {
  Future getData() async{
    var cat1=Uri.parse("http://localhost:4000/show");
    var cat2=Uri.parse("http://localhost:4000/show2");
    var rest1=Uri.parse("http://localhost:4000/show/rest");
    var rest2=Uri.parse("http://localhost:4000/show/rest2");

    Response response1= await get(cat1);
    Response response2= await get(cat2);
    Response response3= await get(rest1);
    Response response4= await get(rest2);

    String body1 =response1.body;
    String body2 =response2.body;
    String body3 =response3.body;
    String body4 =response4.body;

    optionImgLine1.clear();
    optionNameLine1.clear();

    optionImgLine2.clear();
    optionNameLine2.clear();

    mainlistImages1.clear();
    mainlistRname1.clear();
    maxTime1.clear();
    minTime1.clear();
    mainlistDes1.clear();
    mainlistRank1.clear();
    mainlistCommnt1.clear();

    mainlistImages2.clear();
    mainlistRname2.clear();
    maxTime2.clear();
    minTime2.clear();
    mainlistDes2.clear();
    mainlistRank2.clear();
    mainlistCommnt2.clear();

    List<dynamic> list1=json.decode(body1);
    List<dynamic> list2=json.decode(body2);
    List<dynamic> list3=json.decode(body3);
    List<dynamic> list4=json.decode(body4);

    for(int i=0 ; i<list1.length ; i++){
      print(list1[i]['images']);
      print(list1[i]['name']);
      setState(() {
        optionImgLine1.add(list1[i]['images']);
        optionNameLine1.add(list1[i]['name']);

      });
    }
    for(int i=0 ; i<list2.length ; i++){
      print(list2[i]['images']);
      print(list2[i]['name']);
      setState(() {
        optionImgLine2.add(list2[i]['images']);
        optionNameLine2.add(list2[i]['name']);

      });
    }
    for(int i=0 ; i<list3.length ; i++){
      print(list3[i]['images']);
      print(list3[i]['rest_name']);
      print(list3[i]['maxTime']);
      print(list3[i]['minTime']);
      print(list3[i]['descreption']);
      print(list3[i]['rank']);
      print(list3[i]['comment']);
      print("---------------------");
      setState(() {
        mainlistImages1.add(list3[i]['images']);
        mainlistRname1.add(list3[i]['rest_name']);
        maxTime1.add(list3[i]['maxTime']);
        minTime1.add(list3[i]['minTime']);
        mainlistDes1.add(list3[i]['descreption']);
        mainlistRank1.add(list3[i]['rank']);
        mainlistCommnt1.add(list3[i]['comment']);
      });
    }
    for(int i=0 ; i<list4.length ; i++){
      print(list4[i]['images']);
      print(list4[i]['rest_name']);
      print(list4[i]['maxTime']);
      print(list4[i]['minTime']);
      print(list4[i]['descreption']);
      print(list4[i]['rank']);
      print(list4[i]['comment']);
      print("---------------------");
      setState(() {
        mainlistImages2.add(list4[i]['images']);
        mainlistRname2.add(list4[i]['rest_name']);
        maxTime2.add(list4[i]['maxTime']);
        minTime2.add(list4[i]['minTime']);
        mainlistDes2.add(list4[i]['descreption']);
        mainlistRank2.add(list4[i]['rank']);
        mainlistCommnt2.add(list4[i]['comment']);


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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "توصيل الى",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'baloo'),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                  Text(
                    "بغداد , العراق",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'baloo'),
                  )
                ],
              )
            ],
          )
        ],
        leading: Icon(
          Icons.tune_outlined,
          size: 30,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "سجل دخول بأستخدام تطبيق توترز و استمتع بمزايا حصريه ",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'baloo'),
                ),
                Icon(
                  Icons.output,
                  size: 25,
                  color: Color(0xff12c267),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                child: ListView.builder(
              itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  scroll(),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                     Center(
                       child: Container(
                         height: 120,
                         width: MediaQuery.of(context).size.width-50,
                         child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                             itemCount: optionNameLine1.length,
                             itemBuilder:  (BuildContext context, int index){
                               return option(
                                   optionImgLine1[index],
                                   optionNameLine1[index],
                               );
                             }
                         ),
                       ),
                     ),
                      Center(
                        child: Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width-50,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: optionNameLine2.length,
                              itemBuilder:  (BuildContext context, int index){
                                return option(
                                  optionImgLine2[index],
                                  optionNameLine2[index],
                                );
                              }
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 15,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 5),
                    child: Text(
                      "جرب المطاعم المميزه مع مجموعه وجبات لاائعه ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontFamily: 'baloo'),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                              color: Colors.green,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            child: Text(
                              "خصومات السعاده",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'baloo'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: mainlistRname1.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return  mainlist(
                                mainlistImages1[index],
                                maxTime1[index],
                                minTime1[index],
                                mainlistRname1[index],
                                mainlistDes1[index],
                                mainlistRank1[index],
                                mainlistCommnt1[index]
                            );
                  }
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                              color: Colors.green,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            child: Text(
                              "كاش باك",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'baloo'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          reverse: false,
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return  mainlist(
                                mainlistImages2[index],
                                maxTime2[index],
                                minTime2[index],
                                mainlistRname2[index],
                                mainlistDes2[index],
                                mainlistRank2[index],
                                mainlistCommnt2[index]
                            );
                  }

                        ),
                      )
                    ],
                  ),
                ],
              );
            })),
          ),
        ],
      ),
    );
  }

  Column mainlist(String foodpic, String maxtime, String mintime,
      String restname, String description, String rank, String comment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          child: Container(
            height: 170,
            width: MediaQuery.of(context).size.width - 40,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width - 40,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(foodpic))),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 25,
                  child: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Colors.grey,
                              offset: Offset(-2, 2))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 2),
                      child: Stack(
                        children: [
                          Text(
                            "$maxtime - $mintime",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black,
                                fontFamily: 'baloo'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22.0, left: 18),
                            child: Text(
                              "min",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontFamily: 'baloo'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => foodprofile(
                      url: foodpic,
                      description: description,
                      maxtime: maxtime,
                      mintime: mintime,
                      restaurantname: restname,
                      rank: rank,
                    )));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                restname,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.black,
                    fontFamily: 'baloo'),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      description,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.green.withOpacity(0.6),
                          fontFamily: 'baloo'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      height: 30,
                      width: 68,
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11.0),
                        child: Row(
                          children: [
                            Text(
                              "خصم",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.orange),
                            ),
                            Icon(
                              Icons.sell_outlined,
                              size: 20,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11.0),
                        child: Row(
                          children: [
                            Text(
                              "اكتسب نقاط",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.blue),
                            ),
                            Icon(
                              Icons.add_circle_outline,
                              size: 20,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$rank",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'baloo'),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container option(String url, String contname) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      height: 100,
      width: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.4),
                offset: Offset(-2, 2))
          ]),
      child: Column(
        children: [
          Expanded(child: Image(image: NetworkImage(url))),
          Text(
            contname,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'baloo'),
          )
        ],
      ),
    );
  }

  Material scroll() {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          CarouselImages(
            scaleFactor: 0.7,
            listImages: listImages,
            height: 200.0,
            borderRadius: 30.0,
            cachedNetworkImage: true,
            verticalAlignment: Alignment.bottomCenter,
            onTap: (index) {
              print('Tapped on page $index');
            },
          )
        ],
      ),
    );
  }
}
