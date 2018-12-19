import 'package:flutter/material.dart';
import './pages/home/home.dart';
import './pages/favorite/favorite.dart';
import './pages/person/person.dart';
import './pages/setting/setting.dart';
import './pages/publicWidget/customerDrawer.dart';
import './pages/demos/text_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/textDemo':(context)=> TextDemo()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingBottomNavigation(),
    );
  }
}

class SettingBottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingBottomNavigationState();
  }
}

class SettingBottomNavigationState extends State<SettingBottomNavigation> {
  int _currentIndex = 0;
  List<Widget> pages = new List();

  void _hanldeBottomIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
    void initState() {
      pages..add(Home())..add(Person())..add(Favorite())..add(Setting());
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter知识点总结'),elevation: 0),
      drawer: CustomerDrawer(),
      body: Container(
        child: Center(
          child: pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Person')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorite')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Setting')),
        ],
        onTap: _hanldeBottomIndex,
      ),
    );
  }
}
