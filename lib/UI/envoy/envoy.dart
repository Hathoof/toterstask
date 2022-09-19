import 'package:flutter/material.dart';

class envoy extends StatefulWidget {
  const envoy({Key? key}) : super(key: key);

  @override
  State<envoy> createState() => _envoyState();
}

class _envoyState extends State<envoy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Color(0xFF00b290),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0,right: 10),
            child: Text("نوصل اي شىء يسع عللى متن دراجه ناريه",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: 'baloo'),),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0,top: 30),
            child: Text(":اطلب مندوب ل",
              style: TextStyle(fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'baloo'),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_back_ios_new,color: Color(0xFF00b290),size: 20,),
                    Spacer(),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/reimg1.png"))
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("توصيل احتياجاتك",
                            style: TextStyle(fontSize: 14,
                                color: Color(0xFF00b290),
                                fontWeight: FontWeight.bold,
                            fontFamily: 'baloo'),),
                          SizedBox(height: 2,),
                          Text("  مثلا نسيت مفتاحك بالبيت وتريد\n واحد يوله لك للمكتب",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                            fontFamily: 'baloo'),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_back_ios_new,color: Color(0xFF00b290),),
                    Spacer(),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/reimg2.png"))
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("شراء احتياجاتك",
                            style: TextStyle(fontSize: 14,
                                color: Color(0xFF00b290),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'baloo'),),
                          SizedBox(height: 2,),
                          Text("  ما لقيت اللي تريده بتطبيقنا ؟\n مندوب توترز يقدر يشتري لك \nاللي تحتاجه من اي مكان تختاره",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 11,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'baloo'),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
