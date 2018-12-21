import 'package:flutter/material.dart';
import './textListTile.dart';
import './customerDrawerHeader.dart';
import '../../model/basicModel.dart';
import '../publicWidget/iconTextListTile.dart';

class CustomerDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          CustomerDrawerHeader(),
          ListTile(
            title: Text(
              'An app showing Flutter components and some small Demos \n\nDevlopped by Leon Cao',
              style: TextStyle(
                fontSize: 15
              ),
            ),
          ),
          Divider(color: Colors.grey),

          SizedBox(height: 15),

          ListTile(
            title: Text('Star on GitHub',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            leading: Icon(Icons.card_giftcard),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
            },
          ),

          ListTile(
            title: Text('Visit my JianShu',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            leading: Icon(Icons.book),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
            },
          ),

          ListTile(
            title: Text('Contact me',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            leading: Icon(Icons.email),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          

        ],
      ),
    );
  }
}