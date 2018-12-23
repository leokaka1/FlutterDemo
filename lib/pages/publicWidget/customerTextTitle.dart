import 'package:flutter/material.dart';

class CustomerTextTitle extends StatelessWidget {
  final String typeTitle;
  CustomerTextTitle({this.typeTitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        typeTitle,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
