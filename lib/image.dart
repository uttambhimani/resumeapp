import 'package:flutter/material.dart';
import 'package:resumeapp/model.dart';
class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    Model m2 = ModalRoute.of(context)!.settings.arguments as Model;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.pushNamed(context, '/more',arguments: m2);
                  });
                },
                child: Container(
                  child: Image.asset("assets/image/1.jpg"),
                ),
              ),





              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.pushNamed(context, '/second',arguments: m2);
                  });
                },
                child: Container(
                  child: Image.asset("assets/image/2.jpg"),
                ),
              ),


              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.pushNamed(context, '/third',arguments: m2);
                  });
                },
                child: Container(
                  child: Image.asset("assets/image/3.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}