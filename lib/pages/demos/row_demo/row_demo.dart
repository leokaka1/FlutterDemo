import 'package:flutter/material.dart';
import '../basicDetailsPage.dart';
class RowDemo extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return BasicDetailPage(
        titleName: 'Row组件的使用',
        subTitleName: 'Row 属性',
        // detailContent: _handleItem(),
        routeName: '/rowShow',
      );
  }
}