import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resumeapp/education.dart';
import 'package:resumeapp/model.dart';
class moreinfo extends StatefulWidget {
  @override
  State<moreinfo> createState() => _moreinfoState();
}

class _moreinfoState extends State<moreinfo> {
  @override
  Widget build(BuildContext context) {
    Model m2 = ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: [
            IconButton(onPressed: (){
              setState(() {
                pdfGen(m2);
              });
            }, icon: Icon(Icons.picture_as_pdf))
          ],
        ),



        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 90,
                          child: Image.file(File(m2.image.toString())),
                        ),

                        SizedBox(width: 30,),
                        Column(
                          children: [
                            SizedBox(height: 10,),
                            Text("${m2.name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 10,),
                            Text("${m2.number}"),
                            SizedBox(height: 10,),
                            Text("${m2.email}"),
                            SizedBox(height: 10,),
                            Text("${m2.add}")
                          ],
                        )
                      ],
                    ),
                  ),
                ),


                //About
                SizedBox(height: 20,),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("About",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container (
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Text("${m2.about}",style: TextStyle(fontSize: 16),),
                SizedBox(height: 40,),


                //Skills
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Skills",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("${m2.s1}\n${m2.s2}\n${m2.s3}\n${m2.s4}",style: TextStyle(fontSize: 16),),),
                SizedBox(height: 40,),


                //projects
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Projects",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("${m2.p1}\n\n${m2.p2}",style: TextStyle(fontSize: 16),),
                ),
                SizedBox(height: 40,),


                //Education
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Education",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Align(alignment: Alignment.topLeft,child: Text("${m2.dgree}",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                Align(alignment: Alignment.topLeft,child: Text("${m2.school}",style: TextStyle(fontSize: 16),)),
                SizedBox(height: 5,),
                Align(alignment: Alignment.topLeft,child: Text("CGPA : ${m2.mark}",style: TextStyle(fontSize: 16),)),
              ],
            ),
          ),
        ),
      ),
    );
  }

}