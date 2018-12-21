final String tips = '注:使用asset加载本地图片时，请在yaml中解锁asstes代码，并且在项目根目录中新建一个images文件夹，放入图片，然后写入\n\nflutter:\n assets:\n -images/xxx.jpg\n\n引入时候请直接引用:\nnew Image.asset(‘images/pic1.jpg’)';

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
    name: 'Width/Height:',
    properties: 'Image显示区域的宽度和高度,这里需要把Image和图片两个东西区分开，图片本身有大小，Image Widget本身也是有大小的，Image Widget是图片的容器。宽度和高度的配置经常和下面的fit属性配合使用'
  ),

  TextWidgetProperties(
    name: 'Fit:BoxFit',
    properties: 'BoxFit.fill(全图显示，显示可能拉伸，充满),\nBoxFit.contain(全图显示，显示原比例，不需充满),\nBoxFit.cover(显示可能拉伸，可能裁剪，充满),\nBoxFit.fitWidth(显示可能拉伸，可能裁剪，宽度充满),\nBoxFit.fitHeight(显示可能拉伸，可能裁剪，高度充满),\nBoxFit.none(无),\nBoxFit.scaleDown(效果和contain差不多,但是此属性不允许显示超过源图片大小，可小不可大)'
  ),

  TextWidgetProperties(
    name: 'Color & ColorBlendMode',
    properties: 'color和colorBlendMode一般配合使用，BlendMode, 为混合模式的意思，包含如下诸多模式。感觉和Android中Xfermode是一个原理。'
  ),

  TextWidgetProperties(
    name: 'Repeat',
    properties: 'ImageRepeat.repeat(重复平铺),\nImageRepeat.repeatX(X轴平铺),\nImageRepeat.repeatY(Y轴平铺),\nImageRepeat.none(不平铺)'
  ),

  TextWidgetProperties(
    name: 'CenterSlice',
    properties: '当图片需要被拉伸显示的时候，centerSlice定义的矩形区域会被拉伸，可以理解成我们在图片内部定义来一个点9文件用作拉伸'
  ),

  TextWidgetProperties(
    name: 'MatchTextDirection',
    properties: '与Directionality配合使用'
  ),

  TextWidgetProperties(
    name: 'gaplessPlayback',
    properties: '当ImageProvider发生变化后，重新加载图片的过程中，原图片的展示是否保留。若值为true，保留，若为false，不保留，直接空白等待下一张图片加载'
  ),
];