import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen(this.message);

  String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Second Screen'),
    ),

      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Column(
            children: [
              Text(message!),
              Text('Back'),
            ],
          ),
        ),
      ),);
  }
}
