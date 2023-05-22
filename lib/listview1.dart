//import 'dart:ffi';
//import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:pu_resourcse/login.dart';
//import 'package:flutter/material.dart;;;


class Branches extends StatefulWidget {
  const Branches({super.key, });



  @override
  State<Branches> createState() => _BranchesState();


}

class _BranchesState extends State<Branches>{



  @override
  Widget build(BuildContext context) {

    final List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];


    return Scaffold(
      appBar:AppBar(
        actions: [

          IconButton(
              onPressed: (){
          FirebaseAuth.instance.signOut();
          },
              icon: const Icon(Icons.logout)
          )
        ],

        title: const Text('Branches'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index,) {
          return ListTile(
              title: Text(
                items[index],
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: GestureDetector(
                onTap:(){} ,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Add your onTap functionality here
              },
            );

        },
      ),
    );

  }
}











