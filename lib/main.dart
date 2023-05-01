
//import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

import 'package:flutter/material.dart';


import 'package:pu_resourcse/sinup.dart';
import 'package:pu_resourcse/splash.dart';
//import 'package:firebase_auth/firebase_auth.dart';


import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class Firebase {
  static initializeApp({required options}) {}
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});     //({Key? key})  : super(key: key);
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
          'sinup': (context) => const Mysinup(title: ''),

          'login': (context) => const MyLogin( title: '',),



        }

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

