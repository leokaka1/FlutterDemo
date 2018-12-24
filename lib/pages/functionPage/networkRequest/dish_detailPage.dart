import 'package:flutter/material.dart';
import '../../../model/dishResponseModel/dish_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DishDetailsPage extends StatefulWidget {
  final Data dishItem;
  DishDetailsPage({this.dishItem});
  _DishDetailsPageState createState() => _DishDetailsPageState();
}

class _DishDetailsPageState extends State<DishDetailsPage> {
  List<Steps> steps = [];

  //
  Widget titleText(String title) {
    return Column(
      children: <Widget>[
        SizedBox(height: 15),
        Container(
          width: 80,
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(
              color: Colors.pinkAccent[100],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white)),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Widget contentText(String contentText) {
    return Text(
      contentText,
      style: TextStyle(fontSize: 17),
    );
  }

  Widget _stepItem() {
    List<Widget> stepContent = [];
    Widget returnWidget;

    for (int i = 0; i < steps.length; i++) {
      stepContent.add(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(),
          Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '步骤 ${i + 1}',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: ScreenUtil.screenWidth,
                    child: Image.network(
                      steps[i].img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    steps[i].step,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ))
        ],
      ));
      returnWidget = Column(
        children: stepContent,
      );
    }
    return returnWidget;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    steps = widget.dishItem.steps;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.title),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              padding: EdgeInsets.only(bottom: 50),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: ScreenUtil.screenWidth,
                      height: 300,
                      child: Image.network(
                        widget.dishItem.albums[0],
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: 30),
                    Text(widget.dishItem.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                    SizedBox(height: 5),
                    Text('8.3综合评分 1203万浏览',style: TextStyle(fontSize: 15)),
                    SizedBox(height: 8),
                    Container(
                      width: 65,
                      height: 25,
                      alignment: Alignment(0, 0),
                      color: Colors.pinkAccent[100],
                      child: Text('资深殿堂',style: TextStyle(color: Colors.white)),
                    ),


                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                    
                          titleText('菜品介绍'),
                          contentText(widget.dishItem.imtro),
                          SizedBox(height: 30),
                          // 用料
                          titleText('原材料'),
                          contentText(widget.dishItem.ingredients),
                          SizedBox(height: 30),
                          titleText('调料'),
                          contentText(widget.dishItem.burden),
                          SizedBox(height: 20),
                          Container(
                            width: ScreenUtil.screenWidth,
                            color: Colors.redAccent,
                            child: FlatButton(
                              child: Text(
                                '一件买齐，满99减10',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    _stepItem()
                  ],
                )
              ],
            ),

            Positioned(
              bottom: 0,
              child: Container(
                width: ScreenUtil.screenWidth,
                height: 50,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    FlatButton.icon(
                      textColor: Colors.pinkAccent[100],
                      label: Text('喜欢'),  
                      icon: Icon(Icons.favorite),
                      onPressed: (){},
                    ),

                    FlatButton.icon(
                      textColor: Colors.black45,
                      label: Text('传作品'),  
                      icon: Icon(Icons.camera),
                      onPressed: (){},
                    ),

                    FlatButton.icon(
                      textColor: Colors.black45,
                      label: Text('改编'),  
                      icon: Icon(Icons.edit),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
