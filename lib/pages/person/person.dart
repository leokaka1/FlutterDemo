import 'package:flutter/material.dart';
class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person'),
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: Text('Person'),
        ),
      ),
    );
  }
}