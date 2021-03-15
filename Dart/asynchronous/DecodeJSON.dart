/*

 JSON으로 데이터 반환 받기 -> List 형태로 반환

*/



import 'dart:convert';

void main(){
  var jsonString ='''
    [
    {"score":40},
    {"score":70}
]
''';
  
  var scores = jsonDecode(jsonString); // JSON형태의 데이터를 dynamic형식의 리스트로 변환해서 반환해줌.
  print(scores is List);
 
  var firstScore = scores[0];          // {score: 40} Map형태
  print(firstScore); 
  print(firstScore['score']==40);
}


