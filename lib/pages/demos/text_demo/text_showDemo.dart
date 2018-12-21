import 'package:flutter/material.dart';
import '../../publicWidget/customerExpansionPanel.dart';
import '../../publicWidget/customerActionChip.dart';
import '../../../model/TextwidgetProperties.dart';

class TextShowDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextShowDemoDemo();
  }
}

class TextShowDemoDemo extends State<TextShowDemo> {
  TextAlign _textAlign;
  TextDirection _textDirection;
  bool _softWrap;
  TextOverflow _overflow;
  double _textScale;
  int _maxLine;
  Color _decorationColor;
  TextDecoration _textDecoration;
  TextDecorationStyle _textDecorationStyle;
  double _wordSpacing;
  double _letterSpacing;
  FontStyle _fontStyle;
  double _fontSize;
  FontWeight _fontWeight;
  Color _defaultColor;

  // textAlign
  Widget textAlignDemo() {
    return Container(
      width: double.infinity,
      child: CustomerActionChip(
          title: 'TextAlign属性:',
          actionName: alignTitle,
          callback: (tag) {
            switch (tag) {
              case 0:
                setState(() {
                  _textAlign = TextAlign.center;
                });
                break;

              case 1:
                setState(() {
                  _textAlign = TextAlign.end;
                });
                break;

              case 2:
                setState(() {
                  _textAlign = TextAlign.start;
                });
                break;

              case 3:
                setState(() {
                  _textAlign = TextAlign.left;
                });
                break;

              case 4:
                setState(() {
                  _textAlign = TextAlign.right;
                });
                break;

              case 5:
                setState(() {
                  _textAlign = TextAlign.justify;
                });
                break;
            }
          }),
    );
  }

  // textdirection
  Widget textDirectionDemo() {
    return Container(
      width: double.infinity,
      child: CustomerActionChip(
          title: 'TextDirection属性:',
          actionName: textDirectionTitle,
          callback: (tag) {
            switch (tag) {
              case 0:
                setState(() {
                  _textDirection = TextDirection.ltr;
                });
                break;

              case 1:
                setState(() {
                  _textDirection = TextDirection.rtl;
                });
                break;
            }
          }),
    );
  }

  // textdirection
  Widget softWrapDemo() {
    return Container(
      width: double.infinity,
      child: CustomerActionChip(
          title: 'SoftWrap属性',
          actionName: softwrapTitle,
          callback: (tag) {
            switch (tag) {
              case 0:
                setState(() {
                  _softWrap = true;
                });
                break;

              case 1:
                setState(() {
                  _softWrap = false;
                });
                break;
            }
          }),
    );
  }

  // overFlow
  Widget overFlowDemo() {
    return Container(
      width: double.infinity,
      child: CustomerActionChip(
          title: 'OverFlow属性',
          actionName: overFlowTitle,
          callback: (tag) {
            switch (tag) {
              case 0:
                setState(() {
                  _overflow = TextOverflow.clip;
                });
                break;

              case 1:
                setState(() {
                  _overflow = TextOverflow.fade;
                });
                break;

              case 2:
                setState(() {
                  _overflow = TextOverflow.ellipsis;
                });
                break;
            }
          }),
    );
  }

  // textScaleFactor
  Widget textScaleFactorTitleDemo() {
    return Container(
      width: double.infinity,
      child: CustomerActionChip(
          title: 'TextScaleFactorTitle属性',
          actionName: textScaleFactorTitle,
          callback: (tag) {
            switch (tag) {
              case 0:
                setState(() {
                  _textScale = 1.0;
                });
                break;

              case 1:
                setState(() {
                  _textScale = 2.0;
                });
                break;
            }
          }),
    );
  }

  // maxLine
  Widget maxLineDemo() {
    return Container(
      width: double.infinity,
      child: CustomerActionChip(
          title: 'MaxLine属性',
          actionName: maxLinesTitle,
          callback: (tag) {
            switch (tag) {
              case 0:
                setState(() {
                  _maxLine = 1;
                });
                break;

              case 1:
                setState(() {
                  _maxLine = 3;
                });
                break;
            }
          }),
    );
  }

  // textStyle
  Widget textStyleDemo() {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // decoration
              Text('Decoration属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('lineThrough'),
                      onPressed: () {
                        setState(() {
                          _textDecoration=TextDecoration.lineThrough;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('overline'),
                      onPressed: () {
                        _textDecoration=TextDecoration.overline;
                      },
                    ),
                    ActionChip(
                      label: Text('underline'),
                      onPressed: () {
                        _textDecoration=TextDecoration.underline;
                      },
                    ),
                  ],
                )
              ]),

              //decorationStyle
              Text('DecorationStyle属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('solid'),
                      onPressed: () {
                        setState(() {
                          _textDecorationStyle=TextDecorationStyle.solid;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('dashed'),
                      onPressed: () {
                        _textDecorationStyle=TextDecorationStyle.dashed;
                      },
                    ),
                    ActionChip(
                      label: Text('dotted'),
                      onPressed: () {
                        _textDecorationStyle=TextDecorationStyle.dotted;
                      },
                    ),
                  ],
                )
              ]),

              //wordSpacing
              Text('WordSpacing属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('1.0'),
                      onPressed: () {
                        setState(() {
                          _wordSpacing=1;
                        });
                      },
                    ),
                  ],
                )
              ]),

              //letterSpacing
              Text('LetterSpacing属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('1.0'),
                      onPressed: () {
                        setState(() {
                          _wordSpacing=1;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('2.0'),
                      onPressed: () {
                        setState(() {
                          _wordSpacing=2;
                        });
                      },
                    ),
                  ],
                )
              ]),

              //fontStyle
              Text('FontStyle属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('italic'),
                      onPressed: () {
                        setState(() {
                          _fontStyle=FontStyle.italic;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('normal'),
                      onPressed: () {
                        setState(() {
                          _fontStyle=FontStyle.normal;
                        });
                      },
                    ),
                  ],
                )
              ]),

              //fontWeight
              Text('FontWeight属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('bold'),
                      onPressed: () {
                        setState(() {
                          _fontWeight=FontWeight.bold;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('w900'),
                      onPressed: () {
                        setState(() {
                          _fontWeight=FontWeight.w900;
                        });
                      },
                    ),
                  ],
                )
              ]),

              // fontSize
              Text('FontSize属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('15'),
                      onPressed: () {
                        setState(() {
                          _fontSize=15;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('w900'),
                      onPressed: () {
                        setState(() {
                          _fontSize=20;
                        });
                      },
                    ),
                  ],
                )
              ]),

              // Color
              Text('Color属性:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(children: <Widget>[
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    ActionChip(
                      label: Text('Red'),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          _defaultColor=Colors.red;
                        });
                      },
                    ),
                    ActionChip(
                      label: Text('Blue'),
                      avatar: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          _defaultColor=Colors.blue;
                        });
                      },
                    ),
                  ],
                )
              ]),
            
            ],
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _textAlign = TextAlign.center;
    _textDirection = TextDirection.ltr;
    _softWrap = true;
    _overflow = TextOverflow.clip;
    _textScale = 1.0;
    _maxLine = 100;
    _decorationColor = Colors.black;
    _textDecoration = TextDecoration.none;
    _textDecorationStyle = TextDecorationStyle.solid;
    _wordSpacing = 0;
    _letterSpacing = 0;
    _fontStyle = FontStyle.normal;
    _fontSize = 15;
    _fontWeight = FontWeight.normal;
    _defaultColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text实例'),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.restore),
            onPressed: () {
              setState(() {
                _textAlign = TextAlign.center;
                _textDirection = TextDirection.ltr;
                _softWrap = true;
                _overflow = TextOverflow.clip;
                _textScale = 1.0;
                _maxLine = 100;
                _decorationColor = Colors.black;
                _textDecoration = TextDecoration.none;
                _textDecorationStyle = TextDecorationStyle.solid;
                _wordSpacing = 0;
                _letterSpacing = 0;
                _fontStyle = FontStyle.normal;
                _fontSize = 15;
                _fontWeight = FontWeight.normal;
                _defaultColor = Colors.black;
              });
            },
          )
        ],
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 15, top: 15),
        children: <Widget>[
          Text(
            showCase,
            textAlign: _textAlign,
            textDirection: _textDirection,
            softWrap: _softWrap,
            overflow: _overflow,
            textScaleFactor: _textScale,
            maxLines: _maxLine,
            style: TextStyle(
                decorationColor: _decorationColor,
                decoration: _textDecoration,
                decorationStyle: _textDecorationStyle,
                wordSpacing: _wordSpacing,
                letterSpacing: _letterSpacing,
                fontStyle: _fontStyle,
                fontSize: _fontSize,
                fontWeight: _fontWeight,
                color: _defaultColor),
          ),
          SizedBox(height: 15),
          CustomerExpansionList(
              title: 'TextStyle属性:', customerWidget: textStyleDemo()),
          SizedBox(height: 10),
          CustomerExpansionList(
              title: 'TextAlign属性:', customerWidget: textAlignDemo()),
          SizedBox(height: 10),
          CustomerExpansionList(
              title: 'TextDirection属性:', customerWidget: textDirectionDemo()),
          SizedBox(height: 10),
          CustomerExpansionList(
              title: 'SoftWrap属性:', customerWidget: softWrapDemo()),
          SizedBox(height: 10),
          CustomerExpansionList(
              title: 'OverFlow属性:', customerWidget: overFlowDemo()),
          SizedBox(height: 10),
          CustomerExpansionList(
              title: 'TextScaleFactor属性:',
              customerWidget: textScaleFactorTitleDemo()),
          SizedBox(height: 10),
          CustomerExpansionList(
              title: 'MaxLine属性:', customerWidget: maxLineDemo()),
        ],
      ),
    );
  }
}
