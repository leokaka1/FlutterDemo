import 'package:flutter/material.dart';
import './pages/demos/text/text_demo.dart';
import './pages/demos/layout_demo.dart';
import './pages/publicWidget/customerNavigation.dart';
import './pages/demos/scrollView_demo.dart';
import './pages/demos/listView_demo.dart';
import './pages/demos/text/text_showDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {//配置路由
        '/text':(context)=> TextDemo(),
        '/textShow':(context)=> TextShowDemo(),
        '/layout':(context)=> LayoutDemo(),
        '/listView':(context)=>ListView_Demo(),
        '/scrollView':(context)=>ScrollView_Demo(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingBottomNavigation(),
    );
  }
}


