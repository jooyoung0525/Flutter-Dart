//import 'dart:html';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Rankhome extends StatefulWidget {
  @override
  _RankhomeState createState() => _RankhomeState();
}

class _RankhomeState extends State<Rankhome> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {})
              ],
            ),
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      textInvest(), //투자인사이트 글씨
                      top5(context), //Top5
                      Card(
                        height: 500,
                      ), //클릭 이벤트
                      explain() //하단 설명
                    ],
                  ),
                ))));
  }
}

Widget textInvest() {
  return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Text(
            '투자 인사이트',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '미국, 중국, 일본, 한국 등 주요 글로벌 국가들의 3만개 이상의 주식, ETF들에서 투자 아이디어를 얻어보세요.',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '랭킹으로 검색',
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '조건으로 검색',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          )
        ],
      ));
}

Widget top5(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 16),
      child: Column(
        // 테마, 스타일, 글로벌
        children: <Widget>[
          invest('테마'), //테마
          invest('스타일'), //스타일
          invest('글로벌') //글로벌
        ],
      ));
}

Widget invest(String title) {
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          // 텍스트
          children: <Widget>[
            Text(
              '$title 투자',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.error_outline,
                color: const Color(0xFF000000), size: 17.0)
          ],
        ),
        CategoriesScroller(),
      ],
    ),
  );
}

Widget explain() {
  return Card(
    child: Column(
      children: <Widget>[
        Text('맘에 드는 주식, ETF가 보이지 않으시나요?',
            style: TextStyle(fontSize: 10, color: Colors.black)),
        SizedBox(
          height: 3,
        ),
        Text('Premium MemberShip에 가입하시면 최대 100개까지의 주식, ETF를 표시합니다.',
            style: TextStyle(fontSize: 10, color: Colors.black))
      ],
    ),
  );
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height / 10;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: <Widget>[
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '1',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '2차전지',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('+3.5%',
                      style: TextStyle(fontSize: 8, color: Colors.red))
                ],
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '2',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '2차전지',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('+3.5%',
                      style: TextStyle(fontSize: 8, color: Colors.red))
                ],
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '3',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '2차전지',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('+3.5%',
                      style: TextStyle(fontSize: 8, color: Colors.red))
                ],
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '4',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '2차전지',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('+3.5%',
                      style: TextStyle(fontSize: 8, color: Colors.red))
                ],
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.only(right: 20),
              height: categoryHeight,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '5',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '2차전지',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('+3.5%',
                      style: TextStyle(fontSize: 8, color: Colors.red))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
