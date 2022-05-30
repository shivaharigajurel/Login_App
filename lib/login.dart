import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String username;
  const Homepage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
   appBar: AppBar(
     title: Text("Hello User"),
   ),
    body: Column(
      children: [
        SizedBox(height: 40,),
        Text("Welcome"+username), 
      ],
    ),
    );
  }
}