import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:toterstask/foodDetalis/foodDetalis.dart';
import 'package:toterstask/foodprofile/foodprofile.dart';

class firsthomepage extends StatefulWidget {
  @override
  State<firsthomepage> createState() => _firsthomepageState();
}

class _firsthomepageState extends State<firsthomepage> {
  final List<String> listImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6WdY2kSnrNJu1kQrlznJNjgEpW7_R8fsm8ySzZ3jsUdl8nbdfEMxlvbVsDMVnFGe_imQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYXFmxQ1EzAyJq0MEA2pLV6_HouDalmWkojGjdgF5Qzjn9IXhUHidDcRthx0yZweAiIcQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3usqlDJuSeFUUGqZHlF2wuMh8-U0ibrwra9s0BdnhraOEFHq4eo6D25G53z-100ePkJo&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf1Mk0_YC6JPIAgHcVRi7yF3rxuELDz_dFvbq8-EJj1XFwiqUxASZhg7_PiJjDM5JSpmw&usqp=CAU'
  ];

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
            child: Container(child: ListView.builder(
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
                      Row(
                        children: [
                          option(
                              "https://cdn-icons-png.flaticon.com/512/198/198416.png",
                              "المطاعم"),
                          option(
                              "https://cdn.iconscout.com/icon/premium/png-256-thumb/vegetable-1401365-1187883.png",
                              "توترز فريش"),
                        ],
                      ),
                      Row(
                        children: [
                          option(
                              "https://icon-library.com/images/money-icon-png/money-icon-png-26.jpg",
                              "اضف رصيد"),
                          option(
                              "https://i.pinimg.com/originals/5d/d9/f7/5dd9f7c0a69e78617d46d5311d022876.png",
                              "المندوب"),
                          option(
                              "https://www.iconpacks.net/icons/2/free-shopping-bags-icon-2039-thumb.png",
                              "متاجر"),
                        ],
                      )
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
                          itemCount: 1,
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return  Row(
                              children: [
                                mainlist(
                                    "images/kbab.jpg",
                                    48, //minemum number of time delever
                                    30, //maxemum number of time delever
                                    "min", //hours or minutes
                                    "كباب حجي حسين", //restaurant name
                                    ".استمتع بأشهى المشاوي العراقيه و الاطباق الشرقيه", //food type
                                    4.9, //restaurant rank
                                    "والله الاكل كلش طيب و التوصيل سريع,"
                                        "عاشت ايدك حذيفه على هل برنامج"),
                                mainlist(
                                    "images/Burger.jpg",
                                    51, //minemum number of time delever
                                    41, //maxemum number of time delever
                                    "min", //hours or minutes
                                    "فاير فلاي", //restaurant name
                                    "فاير فلاي متخصص في تقديم البركراللذيذ", //food type
                                    4.5, //restaurant rank
                                    "والله الاكل كلش طيب و التوصيل سريع,"
                                        "عاشت ايدك حذيفه على هل برنامج"),
                                mainlist(
                                    "images/dd.jpg",
                                    31, //minemum number of time delever
                                    21, //maxemum number of time delever
                                    "min", //hours or minutes
                                    "حلويات ابو عفيف", //restaurant name
                                    "منذ 1974 نقدم افخر الحلويات الشرقيه المصنوعه يدويا", //food type
                                    4.8, //restaurant rank
                                    "والله الاكل كلش طيب و التوصيل سريع,"
                                        "عاشت ايدك حذيفه على هل برنامج"),
                              ],
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
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index){
                            return  Row(
                              children: [
                                mainlist(
                                    "images/kema.jpg",
                                    48, //minemum number of time delever
                                    30, //maxemum number of time delever
                                    "min", //hours or minutes
                                    "خوش قيمه", //restaurant name
                                    ".استمتع بالرز و القيمه التقليديه الخاصه بنا", //food type
                                    4.9, //restaurant rank
                                    "والله الاكل كلش طيب و التوصيل سريع,"
                                        "عاشت ايدك حذيفه على هل برنامج"),
                                mainlist(
                                    "images/shko_mako.jpg",
                                    51, //minemum number of time delever
                                    41, //maxemum number of time delever
                                    "min", //hours or minutes
                                    "شكو ماكو - حي الجامعه", //restaurant name
                                    "وكاله كويتيه متخصصه في تقديم اشهى\n انواع العصائرو المشروبات", //food type
                                    4.5, //restaurant rank
                                    "والله الاكل كلش طيب و التوصيل سريع,"
                                        "عاشت ايدك حذيفه على هل برنامج"),
                                mainlist(
                                    "images/krep.jpg",
                                    31, //minemum number of time delever
                                    21, //maxemum number of time delever
                                    "min", //hours or minutes
                                    "بي بي سويت", //restaurant name
                                    "متخصصون في تحضير اشهى انواع الكيك \nو الوافل و الكريب", //food type
                                    4.8, //restaurant rank
                                    "والله الاكل كلش طيب و التوصيل سريع,"
                                        "عاشت ايدك حذيفه على هل برنامج"),
                              ],
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

  Column mainlist(String foodpic, int maxtime, int mintime, String time,
      String restname, String description, double rank, String comment) {
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
                              time,
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
                      time: time,
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

  Expanded option(String url, String contname) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.all(10),
      height: 100,
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
    ));
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
