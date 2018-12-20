import 'package:flutter/material.dart';
import '../../../model/TextwidgetProperties.dart';

class TextDemo extends StatelessWidget {

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
        )
      );
      content = Column(
        children: tiles,
      );
    }
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text组件的使用'),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.explore),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.explicit),
              onPressed: (){
                Navigator.pushNamed(context, '/textShow');
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          children: <Widget>[
            Text(
              'Text属性学习',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            SizedBox(height: 25),
            Divider(
              color: Colors.grey,
              height: 32,
            ),
            _handleItem(),
          ],
        ));
  }
}
