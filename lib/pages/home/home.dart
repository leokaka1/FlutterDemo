import 'package:flutter/material.dart';
import '../../model//basicModel.dart';
import '../publicWidget/iconTextListTile.dart';
class Home extends StatelessWidget {

  Widget _handlePageItem(BuildContext context,int index){
    return Container(
      child: IconTextListItem(
        title: pageInfo[index].title,
        subTitle: pageInfo[index].subTitle,
        rightIcon: pageInfo[index].rightIcon,
        directionPage: pageInfo[index].directionPage,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pageInfo.length,
        itemBuilder: _handlePageItem,
      )
    );
  }
}