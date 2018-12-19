import 'package:flutter/material.dart';
class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: Text('Favorite'),
        ),
      ),
    );
  }
}