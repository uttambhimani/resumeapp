import 'package:flutter/material.dart';
import 'package:resumeapp/home.dart';
import 'package:resumeapp/image.dart';
import 'package:resumeapp/moreinfo.dart';
import 'package:resumeapp/second.dart';
import 'package:resumeapp/third.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home(),
        '/more':(context) => moreinfo(),
        '/photo':(context) => image(),
        '/second':(context) => second(),
        '/third':(context) => third(),
      },
    ),
  );
}