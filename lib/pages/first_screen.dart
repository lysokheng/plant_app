import 'package:flutter/material.dart';
import 'package:plant_app/pages/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),

      body: Center(
        child: MaterialButton(
          onPressed: (){
            // Navigator.pushNamed(context, '/second_screen');

            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen('Hello World')));
          },
          child: Text('Second'),
        ),
      ),
    );
  }
}
