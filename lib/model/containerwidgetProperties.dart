class ContainerWidgetProperties {
  final String name;
  final String properties;

  ContainerWidgetProperties({
    this.name,
    this.properties
  });
}

final List<ContainerWidgetProperties> widgetProperties =[
  ContainerWidgetProperties(
    name: 'Alignment:',
    properties: 'topLeft(左上),、\ntopCenter(上中),\ntopRight(上右),\ncenterLeft(中左),\ncenter(居中),\ncenterRight(中右边),\nbottomLeft(左下),\nbottomCenter(下中),\nbottomRight(下右)'
  ),

  ContainerWidgetProperties(
    name: 'Padding:',
    properties: 'EdgtInserts.fromLTRB(上下左右可以自己设置),\nEdgtInserts.symmetric(),\nEdgtInserts.all(所有边都设置内边距),\nEdgtInserts.only(只有某一个边设置)'
  ),

  ContainerWidgetProperties(
    name: 'Margin:',
    properties: 'EdgtInserts.fromLTRB(上下左右可以自己设置),\nEdgtInserts.symmetric(),\nEdgtInserts.all(所有边都设置内边距),\nEdgtInserts.only(只有某一个边设置)'
  ),
];