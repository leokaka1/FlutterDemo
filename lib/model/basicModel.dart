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
    title: 'Text基本学习',
    subTitle:'基本的Text用法学习',
    directionPage: '/text',
    rightIcon: Icon(Icons.text_fields)
  ),

  Pages(
    title: '基本布局学习',
    subTitle:'有关layout的基本学习',
    directionPage: '/layout',
    rightIcon: Icon(Icons.layers)
  ),

  Pages(
    title: 'ListView基本学习',
    subTitle:'基本的ListView用法学习',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.line_style)
  ),

  Pages(
    title: 'ScrollView基本学习',
    subTitle:'ScrollView学习',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.pages)
  ),
];

