import 'package:flutter/material.dart';
import 'package:toterstask/foodprofile/foodprofile.dart';

class foodDetals extends StatefulWidget {
  @override
  State<foodDetals> createState() => _foodDetalsState();
}

class _foodDetalsState extends State<foodDetals> {
  String choose = '';
  bool Check1 = false;
  bool Check2 = false;
  bool Check3 = false;
  int x = 1;
  int y = 1;
  int price = 5000;
  String a = 'سلعه واحده';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.close,
            size: 35,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Icon(
            Icons.share_outlined,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.favorite_border,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width - 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/f8/ef/6e/f8ef6e2229d8a8aec31f2fa20bef27e4.jpg"))),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 15),
                        child: Text(
                          "كلاسك برغر ",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'baloo'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          "شريحه لحم, صلصه, خس, طماطم, مخلل, بصل",
                          style: TextStyle(
                              fontSize: 15, fontFamily: 'baloo', color: Colors.grey),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              "غرام 150  - ",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'baloo', color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              "5,000 د.ع.",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'baloo', color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 12,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 15),
                        child: Text(
                          "اختر النوع",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'baloo'),
                        ),
                      ),
                      RadioListTile(
                          activeColor: Colors.green,
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text("دجاج",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                          value: 'chicken',
                          groupValue: choose,
                          onChanged:(val) {
                            setState(() {
                              choose ="$val";
                            });
                          }
                      ),
                      RadioListTile(
                          activeColor: Colors.green,
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text("لحم",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                          value: 'meat',
                          groupValue: choose,
                          onChanged:(val) {
                            setState(() {
                              choose ="$val";
                            });
                          }
                      ),
                      Container(
                        height: 12,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 15),
                        child: Text(
                          "اضافه المكونات",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'baloo'),
                        ),
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          side: BorderSide(
                              width: 1.5,
                              style: BorderStyle.solid
                          ),
                          title: Text("طماطم",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                          value: Check2,
                          onChanged:(val) {
                            setState(() {
                              Check2 = val!;
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          side: BorderSide(
                              width: 1.5,
                              style: BorderStyle.solid
                          ),
                          title: Text("خس",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                          value: Check1,
                          onChanged:(val) {
                            setState(() {
                              Check1 = val!;
                            });
                          }
                      ),
                      CheckboxListTile(
                          activeColor: Colors.green,
                          side: BorderSide(
                              width: 1.5,
                              style: BorderStyle.solid
                          ),
                          title: Text("جبن",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                          value: Check3,
                          onChanged:(val) {
                            setState(() {
                              Check3 = val!;
                            });
                          }
                      ),
                      Container(
                        height: 12,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black45,
                      ),
                      Card(
                        elevation:0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: IconButton(onPressed: (){
                                setState(() {
                                  x=x+1;
                                  y++;
                                  price = price + 5000;
                                  if(x==0){
                                    a = 'لاسلع';
                                  }else if(x==1){
                                    a = 'سلعه واحده';
                                  }else if(x==2){
                                    a = 'سلعتان';
                                  }else if(x>=3){
                                    a = 'سلع';
                                  }
                                });
                              },
                                  icon: Icon(Icons.add,size: 40,color: Colors.green,)),
                            ),
                            Text("$x",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            (x>0)?
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: IconButton(onPressed: (){
                                setState(() {
                                  if(x!=0)
                                    x=x-1;
                                  y--;
                                  price = price - 5000;
                                  if(x==0){
                                    a = 'لاسلع';
                                  }else if(x==1){
                                    a = 'سلعه واحده';
                                  }else if(x==2){
                                    a = 'سلعتان';
                                  }else if(x>=3){
                                    a = 'سلع';
                                  }
                                });
                              },
                                  icon: Icon(Icons.remove,size: 40,color: Colors.green,)),
                            )

                                : Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Icon(Icons.remove,size: 40,color: Colors.grey.withOpacity(0.4),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black45,
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 60,
                          width: MediaQuery.of(context).size.width-20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("$price . د . ع ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'baloo',
                                    color: Colors.white),),
                              Text("اضف الى العربه",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'baloo',
                                    color: Colors.white),),
                              (x<=2)?
                              Text("$a",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'baloo',
                                    color: Colors.white),)
                                  : Text("$a $y",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'baloo',
                                    color: Colors.white),),

                            ],
                          ),

                        ),
                      ),
                    ]),

              ],
            );

          }

      ),
    );
  }
}
