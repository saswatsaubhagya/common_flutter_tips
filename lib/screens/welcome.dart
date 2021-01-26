import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  final String name;
  const Welcome({this.name});
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome ${widget.name}"),
        ),
      ),
    );
  }
}
