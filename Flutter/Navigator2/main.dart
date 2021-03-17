/*
  화면 네비게이터 방법 두 가지
  1. 라우터 설정해서 pushNamed
  2. Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
*/

import 'package:flutter/material.dart';
import 'package:navigator1/SecondPage.dart';
import 'FirstPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subpage Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',   // 라우터 이용안하고, home: FirstPage()로 설정하고 Navigator push 사용해도 됨
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage()
      },
    );
  }
}
