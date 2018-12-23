import 'package:flutter/material.dart';
import '../basicDetailsPage.dart';
import '../../../model/containerwidgetProperties.dart';

class ContainerDemo extends StatelessWidget {

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

  @override
  Widget build(BuildContext context) {
    return BasicDetailPage(
        titleName: 'Container组件的使用',
        subTitleName: 'Container 属性',
        detailContent: _handleItem(),
        routeName: '/containerShow',
      );
  }
}