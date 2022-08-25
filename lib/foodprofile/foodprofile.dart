import 'package:flutter/material.dart';
import 'package:toterstask/firsthomepage/firsthomepage.dart';

class foodprofile extends StatefulWidget {
  final String url;
  final int maxtime;
  final int mintime;
  final String restaurantname;
  final String description;
  final double rank;
  final String time;
  final String comment;
  foodprofile({
    required this.url,
    required this.maxtime,
    required this.mintime,
    required this.restaurantname,
    required this.description,
    required this.rank,
    required this.time,
    required this.comment
});

  @override
  State<foodprofile> createState() => _foodprofileState();
}

class _foodprofileState extends State<foodprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 48,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width-60,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.url))),
                ),
              ),
              Positioned(
                bottom: -15,
                left: 10,
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
                        horizontal: 15.0, vertical: 2),
                    child: Stack(
                      children: [
                        Text(
                          "${widget.maxtime}-${widget.mintime}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black,
                              fontFamily: 'baloo'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 22.0, left: 12),
                          child: Text(
                            widget.time,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Icon(Icons.search_outlined,
                              size: 30, color: Colors.black),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Icon(Icons.favorite_border,
                              size: 30, color: Colors.black),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Icon(Icons.share_outlined,
                              size: 30, color: Colors.black),
                        )
                      ],
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18,
                        child: Icon(Icons.arrow_forward_ios,
                            size: 30, color: Colors.black),
                      ),
                      onTap: (){
                        Navigator.of(context).pop(
                            MaterialPageRoute(builder: (context)=>firsthomepage()
                            )
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8 ,right: 15),
            child: Text(widget.restaurantname,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(widget.description,
              style: TextStyle(fontSize: 13,fontFamily: 'baloo',color: Colors.grey.withOpacity(0.6)),),
          ),
          Padding(
            padding: const EdgeInsets.only(right:15,top: 5),
            child: Container(
              height: 26,
              width: 115,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Row(
                  children: [
                    Text(
                      "اكتسب نقاط",
                      style:
                      TextStyle(fontSize: 15, color: Colors.blue),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                    Icons.star_border,
                    size: 25,
                    color: Colors.black,
                  ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Colors.green,
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0 ,right: 15),
                  child: Text("مرتكز على 53 من التعليقات",
                    style: TextStyle(fontSize: 12,fontFamily: 'baloo',color: Colors.grey.withOpacity(0.6)),),
                ),
              ],
            ),
              Padding(
                padding: const EdgeInsets.only(top: 8 ,right: 15),
                child: Text("${widget.rank}",
                  style: TextStyle(fontSize: 38,fontFamily: 'baloo',fontWeight: FontWeight.bold),),
              ),

            ],
          ),
          Container(
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.2),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8 ,right: 15),
                child: Text("Hathoof",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5 ,left: 15),
                child: Text(widget.comment,
                  style: TextStyle(fontSize:14,color: Colors.grey.withOpacity(0.6),fontFamily: 'baloo'),),
              ),


            ],
          ),
          Container(
            height: 12,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.2),
          ),

        ],
      ),
    );
  }
}
