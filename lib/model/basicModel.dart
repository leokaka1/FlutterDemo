import 'package:flutter/material.dart';
class Pages{
  final String title;
  final String subTitle;
  final String directionPage;
  final Icon rightIcon;

  Pages({
    this.title,
    this.subTitle,
    this.directionPage,
    this.rightIcon
  });
}

final List<Pages> pageInfo =[
  Pages(
    title: '文本基本学习',
    subTitle:'Text',
    directionPage: '/text',
    rightIcon: Icon(Icons.text_fields)
  ),

  Pages(
    title: '图片展示基本学习',
    subTitle:'Images',
    directionPage: '/images',
    rightIcon: Icon(Icons.image)
  ),

  Pages(
    title: '水平方向上排列',
    subTitle:'Row',
    directionPage: '/layout',
    rightIcon: Icon(Icons.layers)
  ),

  Pages(
    title: '列表视图基本学习',
    subTitle:'ListView',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.line_style)
  ),

  Pages(
    title: '滚动视图基本学习',
    subTitle:'ScrollView',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.pages)
  ),
];

