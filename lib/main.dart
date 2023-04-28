
import 'package:flutter/material.dart';


import 'package:pu_resourcse/sinup.dart';
import 'package:pu_resourcse/splash.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key})  : super(key: key);
  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nothing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      routes: {
        'login':  (context) => const MyLogin(title: '',),
        'register':  (context) => const Mysinup()
      },

    );
    // TODO: implement build
  }


}



//void main() {


  //runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    //home: const Splash(),
    //routes: {

      //'login': (context) =>  const MyLogin(title: '',),
      //'register': (context) => const Mysinup(),

    //},
  //));
//}




