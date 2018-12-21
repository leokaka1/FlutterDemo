import 'package:flutter/material.dart';
class CustomerActionChip extends StatelessWidget {

  final String title;
  final List<String> actionName;
  final callback;

  CustomerActionChip({
    this.title,
    this.actionName,
    this.callback
  });

  Widget handleItem(){
    List<Widget> itemArr = [];
    Widget contentItem;
    for (var i = 0; i < actionName.length; i++) {
      itemArr.add(
        ActionChip(
          label: Text(actionName[i]),
          onPressed: (){
            callback(i);
          },
        )
      );
      contentItem=Wrap(
        spacing: 8,
        children: itemArr,
      );
    }
    return contentItem;
  }
  
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        // Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
        // SizedBox(height: -5),
        handleItem()
      ],
    );
  }
}