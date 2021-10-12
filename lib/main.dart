import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(home: BallPage()),
    );

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void onPressBallBtn() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: TextButton(
            onPressed: onPressBallBtn,
            child: Image.asset("images/ball$ballNumber.png")),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Ask Me Anything",
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball());
  }
}
