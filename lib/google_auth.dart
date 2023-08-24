import 'package:firebase_all/suceess.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class googleauthentication extends StatefulWidget {
  const googleauthentication({Key? key}) : super(key: key);

  @override
  State<googleauthentication> createState() => _googleauthenticationState();
}

class _googleauthenticationState extends State<googleauthentication> {


   signInWithGoogle() async {

     GoogleSignInAccount? googleSignInAccount =  await GoogleSignIn().signIn();
     GoogleSignInAuthentication googleSignInAuthentication =await googleSignInAccount!.authentication;

     var creditial = GoogleAuthProvider.credential(accessToken: googleSignInAuthentication.accessToken,idToken: googleSignInAuthentication.idToken);

     UserCredential user = await FirebaseAuth.instance.signInWithCredential(creditial);

     if(user !=  null){
     Navigator.push(context, MaterialPageRoute(builder: (context) => sucesspage(),));

     }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            signInWithGoogle();
          },
          child: Image(
            image: NetworkImage('https://blog.hubspot.com/hubfs/image8-2.jpg',scale: 20),
          ),
        ),
      ),
    );
  }
}
