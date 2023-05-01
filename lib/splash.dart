import 'dart:async';


import 'package:flutter/material.dart';
import 'package:pu_resourcse/login.dart';
// 'package:pu_resourcse/sinup.dart';
class Splash extends StatefulWidget{
  const Splash({Key? key}) : super(key: key);



  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3),(){

      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const MyLogin(title: 'Mylogin',),));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
         color: Colors.white,
         child: Center(child: Image.asset('android/assets/images/parul logo.png'))

      ),
    );
  }
}


