import 'package:v_final/reg_page.dart';
import 'package:flutter/material.dart';

import 'auth_page.dart';
import 'design.dart';
import 'load_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: gTheme(),
        initialRoute: '/',
        routes: {
          '/'  : (context) => const EnterPage(),
          '/RP'    : (context) => const RegPage(),
          '/LJ'   : (context) => const LoadJSON(),

        }
    );
  }
}

bool authorized =false;

const borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(36)),
    borderSide: BorderSide(color: Color(0xFFbbbbbb), width: 2));

Future haveFail(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('!', style:
          Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.right,
        ),
        content: Text('Ошибка',
          style: Theme.of(context).textTheme.headline1,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          InkWell(
            child: Text('Назад',
                style: Theme.of(context).textTheme.bodyText1?.
                copyWith(color: Colors.red)
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}
