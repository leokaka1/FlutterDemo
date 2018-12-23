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
    title: '容器',
    subTitle:'Container',
    directionPage: '/container',
    rightIcon: Icon(Icons.check_box)
  ),

  Pages(
    title: '水平方向上排列',
    subTitle:'Row',
    directionPage: '/row',
    rightIcon: Icon(Icons.view_carousel)
  ),

  Pages(
    title: '垂直方向上排列',
    subTitle:'Column',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.view_column)
  ),

  Pages(
    title: '按钮',
    subTitle:'Button',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.radio_button_checked)
  ),

  Pages(
    title: '表单',
    subTitle:'Form',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.input)
  ),

  Pages(
    title: '列表',
    subTitle:'ListView',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.list)
  ),

  Pages(
    title: '弹窗',
    subTitle:'Popup',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.bubble_chart)
  ),

  Pages(
    title: '切片',
    subTitle:'Chips',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.card_membership)
  ),

  Pages(
    title: '悬浮按钮',
    subTitle:'FloattingButton',
    directionPage: '/textDemo',
    rightIcon: Icon(Icons.format_indent_decrease)
  ),
];

