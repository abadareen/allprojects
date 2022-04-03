import 'package:flutter/material.dart';

class Greeting extends StatefulWidget {
  @override
  State<Greeting> createState() => _NothingState();
}

class _NothingState extends State<Greeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome To ITG Company',
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
