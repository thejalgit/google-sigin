import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController titlecontroller=TextEditingController();
  TextEditingController contentcontroller=TextEditingController();
  Sentdata()async{
  await  FirebaseFirestore.instance.collection("todo").add({"title":titlecontroller.text,"content":contentcontroller.text});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Google write"),
    ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(20))),
                controller: titlecontroller,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(20))),
                controller: contentcontroller,

              ),
            ),
            MaterialButton(onPressed: () {

              Sentdata();




            },
            color: Colors.red,)
          ],
        ),
      ),
    );
  }
}
