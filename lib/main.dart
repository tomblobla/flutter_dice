import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dice_1st = 'assets/images/dice6.png';
  var dice_2nd = 'assets/images/dice6.png';

  @override
  void initState() {
    super.initState();
  }

  void btnTaped() {
    setState(() {
      dice_1st =
          'assets/images/dice' + (Random().nextInt(6) + 1).toString() + '.png';
      dice_2nd =
          'assets/images/dice' + (Random().nextInt(6) + 1).toString() + '.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice app',
      home: Scaffold(
          backgroundColor: Color(0xff6c8a1b),
          body: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Image.asset(
                    'assets/images/diceeLogo.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset(
                      dice_1st,
                      height: 120,
                      width: 120,
                    ),
                    Image.asset(
                      dice_2nd,
                      height: 120,
                      width: 120,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: ElevatedButton(
                      onPressed: btnTaped,
                      child: Text('Roll'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          padding: MaterialStateProperty.all(EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 30)))),
                )
              ],
            ),
          )),
    );
  }

  nextInt(int i) {}
}
