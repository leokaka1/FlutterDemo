import 'package:flutter/material.dart';
class TextListTile extends StatelessWidget {

  final String title;
  final Icon trailingIcon;
  final String directionRouteName;

  TextListTile({
    this.title,
    this.trailingIcon,
    this.directionRouteName
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: trailingIcon,
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, directionRouteName);
      }
    );
  }
}