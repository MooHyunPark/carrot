import 'package:carrot/models/icon_menu.dart';
import 'package:flutter/material.dart';

import 'components/card_icon_menu.dart';
import 'components/my_carrot_header.dart';

class MyCarrotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MyCarrot Screen build");
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            )),
      ),
      body: ListView(children: [
        MyCarrotHeader(),
        const SizedBox(
          height: 8.0,
        ),
        CardIconMenu(iconMenuList: iconMenu1),
        const SizedBox(
          height: 8.0,
        ),
        CardIconMenu(iconMenuList: iconMenu2),
        const SizedBox(
          height: 8.0,
        ),
        CardIconMenu(iconMenuList: iconMenu3),
      ]),
    );
  }
}
