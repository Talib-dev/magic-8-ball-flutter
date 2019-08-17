import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("8-ball"),
      ),
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();

}

class _EightBallState extends State<EightBall> {

  int ball=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){

          setState(() {
            print('Ball got Clicked');
             ball=Random().nextInt(5)+1;
          });

          },
          child: Image.asset('images/ball$ball.png')),
    );
  }
}
