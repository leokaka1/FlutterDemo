import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../../util/neworkUtil.dart';
import '../../../model/dishResponseModel/dish_name.dart';
import './dish_detailPage.dart';

class DishRequestDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DishRequestDemoState();
  }
}

class DishRequestDemoState extends State<DishRequestDemo> {
  String dishName ='';
  String id = '';
  String title = '';
  String tags = '';
  String imtro = '';
  String ingredients = '';
  String burden = '';
  List<String> albums = <String>[];
  List<Data> dishNameModelArr = <Data>[];

  void request(String dishName) async {
    NetUtil.get('http://apis.juhe.cn/cook/query.php', (data) {
      DishName dishName = DishName.fromJson(data);
      dishNameModelArr = dishName.result.data;
      setState(() {
        dishNameModelArr = dishName.result.data;
      });
    }, params: {'menu': dishName, 'key': 'e45519a1dc9dc6d5c11bf0692806ecc7'});
  }

  Widget _handleEachItems(BuildContext context, index) {

    return ListTile(
      title: Text(dishNameModelArr[index].title),
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (BuildContext context)=>DishDetailsPage(dishItem:dishNameModelArr[index])
          )
        );
      },
    );
  }

  // @override
  // void initState() {
  //   super.initState();
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('菜谱简介'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextField(
                onSubmitted: (text){
                  request(text);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.system_update_alt),
                  labelText: '请输入菜名',
                  // border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.only(left: 15,bottom: 5)
                ),
              )
              
            ),
            Expanded(
              flex: 10,
              child: ListView.builder(
                itemCount: dishNameModelArr.length,
                itemBuilder: _handleEachItems,
              ),
            )
          ],
        ));
  }
}
