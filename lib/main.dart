import 'package:flutter/material.dart';
import './pages/demos/text_demo/text_demo.dart';
import './pages/demos/layout_demo.dart';
import './pages/publicWidget/customerNavigation.dart';
import './pages/demos/scrollView_demo.dart';
import './pages/demos/listView_demo.dart';
import './pages/demos/text_demo/text_showDemo.dart';
import './pages/demos/image_demo/image_demo.dart';
import './pages/demos/image_demo/image_showDemo.dart';
import 'package:flutter/cupertino.dart';//ios风格
import 'package:flutter/foundation.dart';//区分系统版本

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final ThemeData kIOSTheme = new ThemeData(    //Cupertino主题风格
    primaryColor: Colors.lightBlue,
    primaryColorBrightness: Brightness.dark,
  
  );

  final ThemeData kDefaultTheme = new ThemeData(    //默认的Material主题风格
    primaryColor: Colors.orangeAccent,
    accentColor: Colors.orangeAccent[400],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {//配置路由
        '/text':(context)=> TextDemo(),
        '/textShow':(context)=> TextShowDemo(),
        '/images':(context)=> ImageDemo(),
        '/imageShow':(context)=>ImageShowDemo(),
        '/layout':(context)=> LayoutDemo(),
        '/listView':(context)=>ListView_Demo(),
        '/scrollView':(context)=>ScrollView_Demo(),
        
      },
      debugShowCheckedModeBanner: false,
      theme: defaultTargetPlatform == TargetPlatform.iOS ? kIOSTheme : kDefaultTheme,
      home: SettingBottomNavigation(),
    );
  }
}


