import 'package:flutter/material.dart';
import 'package:project/Home1.dart';
import 'package:project/Widgets/CustomAppBar.dart';
import 'package:project/Widgets/CustomDrawer.dart';
import 'package:project/Startup.dart';
import 'package:project/Finish.dart';
import 'package:project/model/model.dart';
import 'package:project/services/yogadb.dart';
import 'package:project/SplashScreen.dart';
import'package:project/services/localdb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}