import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:toterstask/UI/account%20profile/profile.dart';
import 'package:toterstask/UI/logein%20page/accountData.dart';

class newaccount extends StatefulWidget {
  const newaccount({Key? key}) : super(key: key);

  @override
  State<newaccount> createState() => _newaccountState();
}

class _newaccountState extends State<newaccount> {

  var phone = TextEditingController();
  var name = TextEditingController();
  var country = TextEditingController();

  Future Add_data() async {
    var url = Uri.parse("http://localhost:4000/add/signin");
    Map<String, String> headers = {"Content-type": "application/json"};

    String json = '{"Full_name": "$newName",'
        ' "phone_number": "$newPhone",'
        ' "Location": "$newCountry"}';
    // make POST request
    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"];

    if (res == null) {}
  }

  List<String> _locations = ['+88', '+948', '+1', '+912', '+964'];
  String? _selectedLocation = '+1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter your phone number",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'baloo',
                    color: Colors.black),
              ),
            ),
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        elevation: 0,
                        style: TextStyle(fontSize: 18,color: Colors.black),
                          items: _locations.map((String val) {
                            return new DropdownMenuItem<String>(
                              value: val,
                              child: new Text(val),
                            );
                          }).toList(),
                          hint: Text(
                            "$_selectedLocation",
                          ),
                          onChanged: (newVal) {
                            _selectedLocation = newVal;
                            this.setState(() {
                              print(newVal);
                            });
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          height: 50,
                          width: 230,
                          child: TextField(
                            controller: phone,
                            style: TextStyle(
                                fontSize: 22, fontFamily: 'baloo'),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: "phone number",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 65,
                          child: TextField(
                            controller: name,
                            style: TextStyle(
                                fontSize: 22, fontFamily: 'baloo'),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: "Enter your name",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 65,
                          child: TextField(
                            controller: country,
                            style: TextStyle(
                                fontSize: 22, fontFamily: 'baloo'),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: "country",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                      Colors.green,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),),
                    onPressed: () {
                      newName=name.text;
                      newPhone=phone.text;
                      newCountry=country.text;
                      Add_data();

                      (newCountry != null && newPhone != null && newName != null)?
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()))
                      :Navigator.push(context, MaterialPageRoute(builder: (context)=>newaccount()));
                      setState(() {
                        print("$_selectedLocation ${phone.text}");
                        print("${name.text}");

                      });

                    },
                    child: Text("Conferm",style:
                    TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'baloo'),),
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width-40,) ,),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "Have an account and a new number?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'baloo',
                      color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
