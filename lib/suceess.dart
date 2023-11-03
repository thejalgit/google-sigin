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
            Image(image: NetworkImage("https://cdn5.vectorstock.com/i/1000x1000/"
                "51/29/successful-website-login-page-on-computer-screen-w-vector-21895129.jpg")),
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
