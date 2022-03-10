import 'package:v_final/draw.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({Key? key}) : super(key: key);
  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  late TextEditingController _controller;
  late TextEditingController _controller1;
  @override
  void initState(){
    super.initState();
    _controller=TextEditingController(text: '');
    _controller1=TextEditingController(text: '');
  }
  void _checkChel() async {
    final prefs = await SharedPreferences.getInstance();
    if (_controller.text.length==10 && _controller1.text!=''){
      try {
        if (prefs.getString(_controller.text)==_controller1.text){
          authorized=true;
          Navigator.pushNamed(context, '/LJ');
        }
        else {
          haveFail(context);
        }
      }
      catch (e) {
        haveFail(context);
      }
    } else {
      haveFail(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bigBar(context),
        drawer: bigDrawer(context),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgr.jpg'),
                fit: BoxFit.cover,
              )
          ),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const SizedBox(
                  width: 110,
                  height: 84,
                  child: Icon(
                    Icons.account_circle,
                    color: Color(0xFFbbbbbb),
                    size: 100,
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Введите номер телефона (10 цифр) \n и пароль',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(flex:1, child: Container()),
                    Expanded(flex:4,
                      child: SizedBox(
                        child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(fontSize: 20,),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFeceff1),
                            enabledBorder: borderStyle,
                            focusedBorder: borderStyle,
                            labelText: '+7',
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex:1, child: Container()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(flex:1, child: Container()),
                    Expanded(flex:4,
                      child: SizedBox(width: 224,
                        child: TextField(
                          controller: _controller1,
                          obscureText: true,
                          style: const TextStyle(fontSize: 20,),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFeceff1),
                            enabledBorder: borderStyle,
                            focusedBorder: borderStyle,
                            labelText: 'Пароль',
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex:1, child: Container()),
                  ],
                ),
                const SizedBox(height: 28,),
                SizedBox(
                    width: 180,
                    height: 55,
                    child:
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF7998AC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22)
                            )
                        ),
                        onPressed: () => _checkChel(),
                        child: Text(
                            'Войти',
                            style: Theme.of(context).textTheme.headline1?.
                            copyWith(color: Colors.white)
                        )
                    )
                ),
                const SizedBox(height: 30,),
                InkWell(
                  child: Text(
                      'Регистрация',
                      style: Theme.of(context).textTheme.headline2
                  ),
                  onTap:  () => Navigator.pushNamed(context, '/RP'),
                ),
              ],
            ),
          ),
        )
    );
  }
}