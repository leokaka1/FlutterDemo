import 'package:flutter/material.dart';
import '../../publicWidget/customerRichText.dart';
import '../../../model/imageswidgetProperties.dart';
import '../basicDetailsPage.dart';

class ImageDemo extends StatelessWidget {
  // 一些基本属性
  Widget _showBasicProperties() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomerRichText(
          richTitle: '· image.asset:  ',
          richTextColor: Colors.lightBlue,
          richFontSize: 16,
          richFontWeight: FontWeight.bold,
          normalTitle: '加载资源图片',
          normalTextColor: Colors.black87,
          normalFontSize: 16,
          normalFontWeight: FontWeight.normal,
        ),
        CustomerRichText(
          richTitle: '· image.file:  ',
          richTextColor: Colors.lightBlue,
          richFontSize: 16,
          richFontWeight: FontWeight.bold,
          normalTitle: '加载本地图片文件',
          normalTextColor: Colors.black87,
          normalFontSize: 16,
          normalFontWeight: FontWeight.normal,
        ),
        CustomerRichText(
          richTitle: '· image.network:  ',
          richTextColor: Colors.lightBlue,
          richFontSize: 16,
          richFontWeight: FontWeight.bold,
          normalTitle: '加载资源图片',
          normalTextColor: Colors.black87,
          normalFontSize: 16,
          normalFontWeight: FontWeight.normal,
        ),
        CustomerRichText(
          richTitle: '· image.memory:  ',
          richTextColor: Colors.lightBlue,
          richFontSize: 16,
          richFontWeight: FontWeight.bold,
          normalTitle: '加载Unit8List资源图片',
          normalTextColor: Colors.black87,
          normalFontSize: 16,
          normalFontWeight: FontWeight.normal,
        ),
        SizedBox(height: 15),
        Text(
          tips,
          style: TextStyle(color: Colors.redAccent),
        ),
        SizedBox(height: 15),
        Divider(height: 30, color: Colors.grey),
        Text(
          'Image 的基本属性值',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        _handleItem()
      ],
    );
  }

  Widget _handleItem() {
    List<Widget> tiles = [];
    Widget content;
    for (var item in widgetProperties) {
      tiles.add(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(item.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          SizedBox(height: 5),
          Text(item.properties),
          Divider(
            color: Colors.grey,
            height: 32,
          )
        ],
      ));
      content = Column(
        children: tiles,
      );
    }
    return content;
  }

// 'Images组件的使用' //Image加载的基本分类
  @override
  Widget build(BuildContext context) {
    return BasicDetailPage(
      titleName: 'Images 组件的使用',
      subTitleName: 'Image 加载的基本分类',
      detailContent: _showBasicProperties(),
      routeName: '/imageShow',
    );
  }
}
