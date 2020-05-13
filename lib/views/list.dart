import 'package:flutter/material.dart';

class Mylist extends StatefulWidget {
  @override
  _MylistState createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController adno=TextEditingController();
  TextEditingController college=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body:
            
        SingleChildScrollView(
          
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              

              children: <Widget>[
                SizedBox(height: 20.0,),
                TextField(
                  
                  controller: name,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: OutlineInputBorder(),
                  ),


                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: rollno,
                  decoration: InputDecoration(
                    hintText: "Enter Roll No:",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: adno,
                  decoration: InputDecoration(
                    hintText: "Enter Admission No",
                    border: OutlineInputBorder(),
                  ),

                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: college,
                  decoration: InputDecoration(
                  hintText: "Enter College",
                  border: OutlineInputBorder(),
                ),),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
