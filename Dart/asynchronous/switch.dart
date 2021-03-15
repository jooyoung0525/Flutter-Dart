/*
  << StatefulWidget >>
  스위치 생성 후, onchanged의 상태 변경을 setState를 활용해 상태값 바로 변경하는 코드
*/


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                print(value);
                switchValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
