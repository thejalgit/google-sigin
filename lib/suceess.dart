import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class sucesspage extends StatefulWidget {
  const sucesspage({Key? key}) : super(key: key);

  @override
  State<sucesspage> createState() => _sucesspageState();
}

class _sucesspageState extends State<sucesspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            Text("sucess1",style: TextStyle(fontSize: 120)),
            FloatingActionButton(onPressed: ()async{
              await GoogleSignIn().signOut();
              await FirebaseAuth.instance.signOut();
              Navigator.pop(context);


            })
          ],

        ),
      ),
    );
  }
}
