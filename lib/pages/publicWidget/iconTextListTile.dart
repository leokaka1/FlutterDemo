import 'package:flutter/material.dart';
class IconTextListItem extends StatelessWidget {

  final Icon rightIcon;
  final String title;
  final String subTitle;
  final String directionPage;

  IconTextListItem({
    this.rightIcon,
    this.title,
    this.subTitle,
    this.directionPage
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: rightIcon,
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: ()=>Navigator.pushNamed(context, directionPage),
    );
  }
}