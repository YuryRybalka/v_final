import 'package:flutter/material.dart';
import 'main.dart';

PreferredSizeWidget? bigBar(BuildContext context) {
  return AppBar(
    title: Row(
      children: [
        Column(
          children: [
            Text(
                'Меню',
                style: Theme.of(context).textTheme.bodyText2?.
                copyWith(color: Colors.blueGrey)
            ),
          ],
        ),
        Expanded(child: Container(),),
      ],
    ),
  );
}

Widget? bigDrawer(BuildContext context) {
  return SizedBox(width: 350,
    child: Container(
      color: const Color.fromRGBO(0, 0, 0, 0.8),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset('assets/f.png'),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Divider(
                  height: 20, thickness: 2,
                  indent: 20, endIndent: 0,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.cyanAccent,),
                  title: const Text(
                    'Авторизация',
                    style: TextStyle(color: Colors.white70),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/'),
                ),
                const Divider(height: 20, thickness: 1, indent: 20, endIndent: 0, color: Colors.cyanAccent,),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.cyanAccent,),
                  title: const Text('Регистрация', style: TextStyle(color: Colors.white70),),
                  onTap: () => Navigator.pushNamed(context, '/RP'),
                ),
                const Divider(height: 20, thickness: 1,
                  indent: 20, endIndent: 0,
                  color: Colors.cyanAccent,
                ),
                ListTile(
                  leading: const Icon(Icons.login, color: Colors.cyanAccent,),
                  title: const Text(
                    'Список',
                    style: TextStyle(color: Colors.white70),
                  ),
                  onTap: () {
                    if (authorized) {
                      Navigator.pushNamed(context, '/LJ');
                    }
                    else {
                      haveFail(context);
                    }
                  },
                ),
                const Divider(
                  height: 20, thickness: 1,
                  indent: 20, endIndent: 0,
                  color: Colors.cyanAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
