import 'package:flutter/material.dart';
import '../../model//basicModel.dart';
import '../publicWidget/iconTextListTile.dart';
class Person extends StatelessWidget {

  Widget _handlePageItem(BuildContext context,int index){
    return Container(
      child: IconTextListItem(
        title: functionPageInfo[index].title,
        subTitle: functionPageInfo[index].subTitle,
        rightIcon: functionPageInfo[index].rightIcon,
        directionPage: functionPageInfo[index].directionPage,
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: functionPageInfo.length,
        itemBuilder: _handlePageItem,
      )
    );
  }
}