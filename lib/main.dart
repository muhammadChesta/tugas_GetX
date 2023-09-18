import 'package:baru_lagii/inDecScreen.dart';
import 'package:baru_lagii/listScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:baru_lagii/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
          GetPage(name: "/", page: ()=>MyApp()),
          GetPage(name:'/indec' , page: ()=>InDecScreen()),
          GetPage(name: '/listsc', page: ()=>ListScreen())
      ],
      home: HomeScreen(),
    );
  }
}