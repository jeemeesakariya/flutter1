import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login.dart';


class MainPage extends StatelessWidget{
  const MainPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context,snapshot) {
          if(snapshot.hasData){

            return  const MyHomePage(title: '',);
          }
          else{
            return const MyLogin(title: '',);
          }
        },
      ),
    );

  }
}

