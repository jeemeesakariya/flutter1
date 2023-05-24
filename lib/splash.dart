import 'dart:async';
import 'package:flutter/material.dart';
//import 'loginpage1.dart';
import 'mainpage.dart';

class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);



  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {

    super.initState();

    Timer(const Duration(seconds: 3),(){

      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const  MainPage(title: '',),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
         color: Colors.white,
         child: Center(child: Image.asset('android/assets/images/parul logo.png'))

      ),
    );
  }
}


