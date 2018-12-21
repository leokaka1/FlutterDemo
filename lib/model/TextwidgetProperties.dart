final String showCase =
      'We’ve spent the last few months redesigning the website and how its information is organized. We hope you can more easily find the docs you are looking for. Some of the changes to the website include:Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。';

class TextWidgetProperties {
  final String name;
  final String properties;

  TextWidgetProperties({
    this.name,
    this.properties
  });
}

final List<TextWidgetProperties> widgetProperties =[
  TextWidgetProperties(
    name: 'TextAlign:',
    properties: '文本对齐方式,有center(居中),end(末尾),start(起始),left(左侧),right(右侧),justify(拉伸)'
  ),

  TextWidgetProperties(
    name: 'TextDirection:',
    properties: '文本对齐方向,ltr(左边顺序),rtl(右边顺序)'
  ),

  TextWidgetProperties(
    name: 'SoftWrap:',
    properties: '是否自动换行,true(自动换行),false(非自动换行)'
  ),

  TextWidgetProperties(
    name: 'Overflow:',
    properties: '文字超出屏幕之后的处理方式,clip(剪裁),fade (渐隐),ellipsis(省略号)'
  ),

  TextWidgetProperties(
    name: 'TextScaleFactor:',
    properties: '字体显示的赔率'
  ),

  TextWidgetProperties(
    name: 'MaxLines:',
    properties: '最大行数'
  ),

  TextWidgetProperties(
    name: 'Style:TextStyle',
    properties: '文字样式'
  ),

  TextWidgetProperties(
    name: '(TextStyle)decorationColor',
    properties: '下划线的的颜色'
  ),

  TextWidgetProperties(
    name: '(TextStyle)decoration:TextDecoration',
    properties: 'none(无文字装饰),lineThrough(删除线),overline(文字上面显示线),underline(文字下面显示线)'
  ),

  TextWidgetProperties(
    name: '(TextStyle)decorationStyle:TextDecorationStyle',
    properties: '.solid(文字装饰的风格),dashed,dotted(虚线)(简短间隔大小区分),double(三条线),solid(两条线)'
  ),

  TextWidgetProperties(
    name: '(TextStyle)wordSpacing',
    properties: '单词间隙(负值可以让单词更紧凑)'
  ),

  TextWidgetProperties(
    name: '(TextStyle)letterSpacing',
    properties: '字母间隙(负值可以让字母更紧凑)'
  ),

  TextWidgetProperties(
    name: '(TextStyle)letterSpacing',
    properties: '字母间隙(负值可以让字母更紧凑)'
  ),

  TextWidgetProperties(
    name: '(TextStyle)fontStyle:FontStyle',
    properties: 'italic,normal(斜体和正常)'
  ),

  TextWidgetProperties(
    name: '(TextStyle)fontSize',
    properties: '字体大小'
  ),

  TextWidgetProperties(
    name: '(TextStyle)fontWeight:FontWeight',
    properties: '字体粗细,粗体和正常'
  ),

  TextWidgetProperties(
    name: '(TextStyle)color',
    properties: '文字颜色'
  ),
];

final List<String> alignTitle = [
    '居中(center)',
    '末尾(end)',
    '起始(start)',
    '左侧(left)',
    '右侧(right)',
    '拉伸(stretch)',
  ];

final List<String> textDirectionTitle = [
  '左侧(ltr)',
  '右侧(rtl)',
];

final List<String> softwrapTitle = [
  '是(true)',
  '否(false)',
];

final List<String> overFlowTitle = [
  'clip(剪裁)',
  'fade (渐隐)',
  'ellipsis(省略号)',
];

final List<String> textScaleFactorTitle = [
  '1.0',
  '2.0',
];

final List<String> maxLinesTitle = [
  '1-Line',
  '3-Line',
];