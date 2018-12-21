import 'package:flutter/material.dart';

class ImageShowDemo extends StatefulWidget {
  _ImageShowDemoState createState() => _ImageShowDemoState();
}

class _ImageShowDemoState extends State<ImageShowDemo> {
  ImageRepeat repeat;
  BlendMode colorBlendMode;

  Image image = Image.asset(
    'images/xianyuFlutter.jpeg',
    fit: BoxFit.scaleDown,
    matchTextDirection: true,
  );

  @override
  void initState() {
    super.initState();
    repeat = ImageRepeat.repeat;
    colorBlendMode = BlendMode.color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image实例'),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 15),
        children: <Widget>[
          // imageType
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                    child: Text('本地图片：',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Image.asset(
                    'images/flutterFlag.jpeg',
                    width: 150,
                    height: 100,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                    child: Text('网络图片：',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Image.network(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545385331102&di=419aeb0cf51e3ff9b6d8ba839aeda0d7&imgtype=0&src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Farchive%2F8bbb8f2bade36e1a4737f68c2fb645e814a79f8b.jpg',
                      width: 150,
                      height: 100),
                ],
              )
            ],
          ),
          // reapeat
          Column(
            children: <Widget>[
              Divider(color: Colors.lightBlue),
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                child: Text('Repeat：',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Image.asset(
                'images/card.png',
                width: 300,
                height: 300,
                repeat: repeat,
              ),
              SizedBox(height: 15),
              Wrap(
                spacing: 10,
                children: <Widget>[
                  ActionChip(
                    label: Text('Repeat'),
                    onPressed: () {
                      setState(() {
                        repeat = ImageRepeat.repeat;
                      });
                    },
                  ),
                  ActionChip(
                    label: Text('RepeatX'),
                    onPressed: () {
                      setState(() {
                        repeat = ImageRepeat.repeatX;
                      });
                    },
                  ),
                  ActionChip(
                    label: Text('RepeatY'),
                    onPressed: () {
                      setState(() {
                        repeat = ImageRepeat.repeatY;
                      });
                    },
                  ),
                  ActionChip(
                    label: Text('RepeatNone'),
                    onPressed: () {
                      setState(() {
                        repeat = ImageRepeat.noRepeat;
                      });
                    },
                  ),
                ],
              )
            ],
          ),

          // blendMode
          Column(
            children: <Widget>[
              Divider(color: Colors.lightBlue,),
              SizedBox(height: 35),
              Text('BlendMode:（必须有color）',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Image.asset(
                'images/card.png',
                colorBlendMode: colorBlendMode,
                color: Colors.orangeAccent,
              ),
              Wrap(
                spacing: 8,
                children: <Widget>[
                  ActionChip(
                    label: Text('colorBurn'),
                    onPressed: () {
                      setState(() {
                        colorBlendMode=BlendMode.colorBurn;
                      });
                    },
                  ),
                  ActionChip(
                    label: Text('exclusion'),
                    onPressed: () {
                      setState(() {
                        colorBlendMode=BlendMode.exclusion;
                      });
                    },
                  ),
                  ActionChip(
                    label: Text('colorDodge'),
                    onPressed: () {
                      setState(() {
                        colorBlendMode=BlendMode.colorDodge;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        
          // matchTextDirection
          Column(
            children: <Widget>[
              SizedBox(height: 32),
              Column(
                children: <Widget>[
                  Divider(color: Colors.lightBlue,),
                  Text('MatchTextDirection:(Directionality配合使用)',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  Text('ltr',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: image
                  ),
                  SizedBox(height: 5,),
                  Text('rtl',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: image
                  ),
                  SizedBox(height: 10,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
