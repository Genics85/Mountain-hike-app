 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/pages/description_page.dart';
import 'package:mountain/pages/nav_pages/landing_page.dart';
import 'package:mountain/pages/welcome_page.dart';

void main(){
  runApp(MyApp());
 }

 class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: "Mountain Exploration",
      debugShowCheckedModeBanner: false,
      home: DescriptionPage(),
    );
  }
  }

