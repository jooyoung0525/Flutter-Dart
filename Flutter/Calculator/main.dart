import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget {
  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {
  String sum = '';
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();
  List _buttonList = ['더하기', '빼기', '곱하기', '나누기'];
  List<DropdownMenuItem<String>> _dropDownMenuItems = []; // 리스트 드롭다운 기능 -> 스트링이 []에 바로 안담아져서 26번째줄 수행하고 담기
  String _buttonText;

  void initState() { // 초기화 -> StatefulWidget 라이프사이클 참고!
    super.initState();
    for (var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(value: item, child: Text(item)));
    }
    _buttonText = _dropDownMenuItems[0].value; //기본
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [ // 위젯이 너무 많아서 따로 정의해줌
              flutter_text(),
              text_box1(),
              text_box2(),
              result_button(),
              select_box(),
              result()
            ],
          ),
        ),
      ),
    );
  }

  Widget flutter_text() {
    return Padding(padding: EdgeInsets.all(15), child: Text('flutter'));
  }

  Widget text_box1() {
    return Padding(
        padding: EdgeInsets.only(left: 50, right: 50),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: value1,
        ));
  }

  Widget text_box2() {
    return Padding(
        padding: EdgeInsets.only(left: 50, right: 50), //패딩 -> 여백주기
        child: TextField(
          keyboardType: TextInputType.number, 
                // 키패드 보이는거. [text: 기본텍스트 / multiline: 멀티라인(여러줄) / number: 숫자 키보드 / phone: 전화번호 전용키보드 / datetime: 날짜 입력 키보드 / emailAddress: @ 표시 등 이메일 입력 키보드 / url: 주소입력창]
          controller: value2,
        ));
  }

  Widget result_button() {
    return Padding(
        padding: EdgeInsets.only(left: 100, right: 100, top: 15),
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                var value1Int = double.parse(value1.value.text);
                var value2Int = double.parse(value2.value.text);
                var result;

                if (_buttonText == '더하기') {
                  result = value1Int + value2Int;
                } else if (_buttonText == '빼기') {
                  result = value1Int - value2Int;
                } else if (_buttonText == '곱하기') {
                  result = value1Int * value2Int;
                } else {
                  result = value1Int / value2Int;
                }

                sum = '$result';
              });
            },
            child: Row( // Row, Column 정렬하려면 mainAxisAlignment, CrossAxisAlignment 이용
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.add), Text(_buttonText)],
            ),
            style: ElevatedButton.styleFrom(primary: Colors.amber))); //flutter tutorial에서 RaisedButton은 ElevatedButton으로 대체 됨
  }

  Widget select_box() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: DropdownButton(
        items: _dropDownMenuItems,
        onChanged: (value) { // onChanged: 클릭시
          setState(() {  // setState() : 상태 변경 반영
            _buttonText = value;
          });
        },
        value: _buttonText,
      ),
    );
  }

  Widget result() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Text(
        '결과 : $sum',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
