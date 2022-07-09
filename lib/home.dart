import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:resumeapp/model.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtaddress = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtnumber = TextEditingController();
  var txtkey = GlobalKey<FormState>();

  String name = "";
  String address = "";
  String email = "";
  String mn = "";
  File f1 = File("");
  List l1 = [];


  TextEditingController txtabout = TextEditingController();
  TextEditingController txts1 = TextEditingController();
  TextEditingController txts2 = TextEditingController();
  TextEditingController txts3 = TextEditingController();
  TextEditingController txts4 = TextEditingController();
  TextEditingController txtp1 = TextEditingController();
  TextEditingController txtp2 = TextEditingController();

  String about = "";
  String s1 = "";
  String s2 = "";
  String s3 = "";
  String s4 = "";
  String p1 = "";
  String p2 = "";


  TextEditingController txtcource = TextEditingController();
  TextEditingController txtcollage = TextEditingController();
  TextEditingController txtpercentage = TextEditingController();
  TextEditingController txtyop = TextEditingController();

  String collage = "";
  String cource = "";
  String selected = "";
  String select = "";
  String percentage = "";
  String sign = "";
  String yop = "";



  int _currentPage = 0;
  final _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            elevation: 0,
            leading: Icon(Icons.arrow_back),
            title: Text(
              "RESUME",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            actions: [
              Icon(Icons.share),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: PageView(
            controller: _pageController,
            children: [
              contact(),
              more(),
              edudeails(),
            ],
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
          ),
          bottomNavigationBar: BottomBar(
            textStyle: TextStyle(fontWeight: FontWeight.bold),
            backgroundColor: Colors.grey.shade100,
            selectedIndex: _currentPage,
            onTap: (int index) {
              _pageController.jumpToPage(index);
              setState(() => _currentPage = index);
            },
            items: <BottomBarItem>[
              BottomBarItem(
                icon: Icon(Icons.info),
                title: Text('Contact Info'),
                activeColor: Colors.blue,
                activeTitleColor: Colors.blue.shade600,
              ),
              BottomBarItem(
                icon: Icon(Icons.info),
                title: Text('More Info'),
                activeColor: Colors.red,
              ),
              BottomBarItem(
                icon: Icon(Icons.info),
                title: Text('Academic Details'),
                backgroundColorOpacity: 0.1,
                activeColor: Colors.greenAccent.shade700,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget contact() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Contact Information",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
            ),
            GestureDetector(
              onTap: () async {
                ImagePicker ipick = ImagePicker();
                XFile? f2 = await ipick.pickImage(source: ImageSource.gallery);

                setState(() {
                  f1 = File(f2!.path);
                });
              },
              child: Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  backgroundImage: FileImage(f1),
                ),
              ),
            ),
            TextFormField(
              controller: txtname,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Name",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Name";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: txtaddress,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Address",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Address";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: txtemail,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Email id",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Email";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: txtnumber,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Mobile Number",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Mobile Number";
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget more() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "More Information",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),

            TextFormField(
              controller: txtabout,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "About Yourself",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Details";
                }
                else {
                  return null;
                }
              },
            ),

            //skills
            TextFormField(
              controller: txts1,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Skills",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Your Skills";
                }
                else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: txts2,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Skills",
                focusColor: Colors.green,
              ),
              // validator: (value){
              //   if(value!.isEmpty)
              //   {
              //     return "Enter Your Skills";
              //   }
              //   else
              //   {
              //     return null;
              //   }
              // },
            ),
            TextFormField(
              controller: txts3,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Skills",
                focusColor: Colors.green,
              ),
              // validator: (value){
              //   if(value!.isEmpty)
              //   {
              //     return "Enter Your Skills";
              //   }
              //   else
              //   {
              //     return null;
              //   }
              // },
            ),
            TextFormField(
              controller: txts4,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Skills",
                focusColor: Colors.green,
              ),
              // validator: (value){
              //   if(value!.isEmpty)
              //   {
              //     return "Enter Your Skills";
              //   }
              //   else
              //   {
              //     return null;
              //   }
              // },
            ),

            //project
            TextFormField(
              controller: txtp1,
              // textInputAction: TextInputAction.next,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Projects",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Details";
                }
                else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: txtp2,
              // textInputAction: TextInputAction.next,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Projects",
                focusColor: Colors.green,
              ),
              // validator: (value){
              //   if(value!.isEmpty)
              //   {
              //     return "Enter Details";
              //   }
              //   else
              //   {
              //     return null;
              //   }
              // },
            ),
          ],
        ),
      ),
    );
  }

  Widget edudeails() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Academic Details",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
            SizedBox(height: 20,),
            Text(
              "List your highest level of education first",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                  decoration: TextDecoration.underline
              ),
            ),
            SizedBox(height: 20,),

            //education
            TextFormField(
              controller: txtcource,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Cource/Degree",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Details";
                }
                else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: txtcollage,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "School/College/University Name",
                focusColor: Colors.green,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Details";
                }
                else {
                  return null;
                }
              },
            ),

            Row(
              children: [
                Expanded(child: RadioListTile(
                  value: "Percentage",
                  groupValue: selected,
                  onChanged: (value) {
                    setState(() {
                      selected = value as String;
                      sign = "%";
                    });
                  },
                  title: Text("Percentage"),
                ),),
                Expanded(child: RadioListTile(
                  value: "CGPA",
                  groupValue: selected,
                  onChanged: (value) {
                    setState(() {
                      selected = value as String;
                      sign = "";
                    });
                  },
                  title: Text("CGPA"),
                ),),
              ],
            ),

            TextFormField(
              controller: txtpercentage,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "Mark",
                focusColor: Colors.green,
                // hintText: "$sign",
                suffixText: "$sign",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Details";
                }
                else {
                  return null;
                }
              },
            ),

            Row(
              children: [
                Expanded(child: RadioListTile(
                  value: "Graduated",
                  groupValue: select,
                  onChanged: (value) {
                    setState(() {
                      select = value as String;
                    });
                    txtyop.text = "";
                  },
                  title: Text("Graduated"),
                ),),
                Expanded(child: RadioListTile(
                  value: "Purcuing",
                  groupValue: select,
                  onChanged: (value) {
                    setState(() {
                      select = value as String;
                    });
                    txtyop.text = "Pursuing";
                  },
                  title: Text("Pursuing"),
                ),),
              ],
            ),

            TextFormField(
              controller: txtyop,
              decoration: InputDecoration(
                labelText: "Year of Passing",
                focusColor: Colors.green,
                //prefixText: "$pass",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter Details";
                }
                else {
                  return null;
                }
              },
            ),

            SizedBox(height: 50,),

            Container(
              height: 50,
              width: 180,
              child: ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    setState(() {
                      if (txtkey.currentState!.validate() == true) {
                        Model m1 = Model(about: txtabout.text,
                          add: txtaddress.text,
                          dgree: txtcource.text,
                          email: txtemail.text,
                          image: f1.path,
                          mark: txtpercentage.text,
                          name: txtname.text,
                          number: txtnumber.text,
                          p1: txtp1.text,
                          p2: txtp2.text,
                          s1: txts1.text,
                          s2: txts2.text,
                          s3: txts3.text,
                          s4: txts4.text,
                          school: txtcollage.text,
                          yop: txtyop.text,
                        );

                        Navigator.pushNamed(context, '/photo', arguments:m1);
                      }
                    });
                  },
                  child: Text(
                    "Save All Details",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }


}