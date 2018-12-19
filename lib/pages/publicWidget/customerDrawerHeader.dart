import 'package:flutter/material.dart';

class CustomerDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'Leon专门制作',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      accountEmail: Text(
        'leocaoxiaozhu@163.com',
        style: TextStyle(fontSize: 10),
      ),
      decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          image: DecorationImage(
            image: NetworkImage(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545376615&di=f9c840033a4ed437060114e7540e3e3b&imgtype=jpg&er=1&src=http%3A%2F%2Fcdn-static.denofgeek.com%2Fsites%2Fdenofgeek%2Ffiles%2Fstyles%2Farticle_main_wide_image%2Fpublic%2Fleon-main.jpg%3Fitok%3DVmdvgk49'),
            fit: BoxFit.cover,
          )),
    );
  }
}
