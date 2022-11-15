import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notee/screens/home_page.dart';

void main() async {
  //initialize hive
  await Hive.initFlutter();
  
  //open the box
  var box = await Hive.openBox('mybox');
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.yellow)
      ),
      home: const HomePage(),
    ),
  );
}
