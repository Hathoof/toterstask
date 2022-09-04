import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
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
                list("images/dec.jpg",
                    "Happy Hour",
                    "new on Toters! If it fits \nwe can dilver it.!",
                    24),
                list("images/laistimage1.PNG",
                    "Weekly discounts",
                    "new on Toters! If it fits \nwe can dilver it.!",
                    24),
                list("images/laistimage2.PNG",
                    "Cashback",
                    "new on Toters! If it fits \nwe can dilver it.!",
                    24),
                list("images/laistimage3.PNG",
                    "Get Free Maels",
                    "new on Toters! If it fits \nwe can dilver it.!",
                    24)

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
      int num,
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
