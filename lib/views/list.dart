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
 var names=[];
 var rolls=[];
 var adnos=[];
 var coll=[];
 //int _index=0;
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
                RaisedButton(
                  child: Text("Add Details",style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                  onPressed: ()
                {
                  var dname=name.text;
                  var droll=rollno.text;
                  var dadno=adno.text;
                  var dcollege=college.text;
                  //var details=[{"name":dname,"adno":dadno,"college":dcollege,"rollno":droll}];


                  setState(() {

                    names.add(dname);
                    rolls.add(droll);
                    adnos.add(dadno);
                    coll.add(dcollege);

                  });
                },

                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount:names.length==null?0:names.length ,
                  itemBuilder: (context,index)
                {
                  return Card(
                    elevation: 19.0,
                    child: ListTile(
                      leading: Icon(Icons.account_circle,size: 40.0,color: Colors.green,),
                    trailing: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            names.removeAt(index);
                            rolls.removeAt(index);
                            adnos.removeAt(index);
                            coll.removeAt(index);
                          });
                        },
                        child: Icon(Icons.clear,size: 40.0,color: Colors.green,)),
                    title: Text(names[index].toString()),
                      subtitle: Text("Roll No:"+rolls[index].toString()+"\nAdno:"+adnos[index].toString()+"\nCollege:"+coll[index].toString()),

                    ),
                  );
                },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
