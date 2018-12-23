import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class BasicShowPageState<T extends StatefulWidget> extends State<T> {

  @override
  void initState() {
    super.initState();
  }

  @protected
  List<Widget> getBottomContent();

  @protected
  Widget getTopContent();

  @protected
  String getTitle();

  @protected
  getReStore();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text(getTitle()),
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.restore),
                onPressed: (){getReStore();},
              )
            ],
          ),
          body: Column(children: <Widget>[
            Expanded(
              child: getTopContent(),
            ),
              
            Expanded(
                child: ListView(
                  children: getBottomContent(),
                ))
          ])),
    );
  }
}
