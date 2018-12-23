import 'package:flutter/material.dart';

class BasicDetailPage extends StatelessWidget {

  final String fixTips = '待添加内容';

  final String titleName;
  final String subTitleName;
  @required final Widget detailContent;
  
  final String webUrl;
  final String routeName;

  BasicDetailPage({
    this.subTitleName,
    this.titleName,
    this.detailContent,
    this.webUrl,
    this.routeName
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleName==null ? fixTips:titleName),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.explore),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.explicit),
              onPressed: (){
                Navigator.pushNamed(context, routeName);
              },
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          children: <Widget>[
            Text(
              subTitleName==null ? fixTips:subTitleName,
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
            detailContent==null? Text(fixTips) : detailContent,
          ],
        ));
  }
}
