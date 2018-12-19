import 'package:flutter/material.dart';
import './textListTile.dart';
import './customerDrawerHeader.dart';
import '../../model/basicModel.dart';

class CustomerDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          CustomerDrawerHeader(),
          // 下面的listTile
          TextListTile(
            title: 'Text控件使用',
            trailingIcon: Icon(Icons.arrow_right),
            directionRouteName: '/textDemo'
          )

        ],
      ),
    );
  }
}