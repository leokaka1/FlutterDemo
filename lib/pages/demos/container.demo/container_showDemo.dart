import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../publicWidget/radioSelectedWidget.dart';
import '../../../model/params.dart';
import '../../publicWidget/customerTextTitle.dart';
import '../basicShowPage.dart';

class ContainerShowDemo extends StatefulWidget {
  _ContainerShowDemoState createState() => _ContainerShowDemoState();
}

class _ContainerShowDemoState extends BasicShowPageState<ContainerShowDemo> {
  Value<AlignmentGeometry> _alignment;
  Value<EdgeInsetsGeometry> _padding;
  Value<EdgeInsetsGeometry> _margin;

  @override
  void initState() {
    super.initState();
    _alignment = alignmentValues[0];
    _padding = paddingValues[0];
    _margin = marginValues[0];
  }

  @override
  getReStore() {
    setState(() {
      _alignment = alignmentValues[0];
      _padding = paddingValues[0];
      _margin = marginValues[0];
    });
  }

  @override
  List<Widget> getBottomContent() {
    return [
      CustomerTextTitle(typeTitle: 'Align 属性'),
      RadioGroupWidget(alignmentValues, (value) {
        setState(() {
          _alignment = value;
        });
      }),
      CustomerTextTitle(typeTitle: 'Padding 属性'),
      RadioGroupWidget(paddingValues, (value) {
        setState(() {
          _padding = value;
        });
      }),
      CustomerTextTitle(typeTitle: 'Margin 属性'),
      RadioGroupWidget(marginValues, (value) {
        setState(() {
          _margin = value;
        });
      })
    ];
  }

  @override
  String getTitle() {
    return 'Container实例';
  }

  @override
  Widget getTopContent() {
    return Container(
        width: ScreenUtil.screenWidth,
        color: Colors.redAccent[100],
        alignment: _alignment.value,
        padding: _padding.value,
        margin: _margin.value,
        child: Text('ContainerTest',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue)));
  }
}
