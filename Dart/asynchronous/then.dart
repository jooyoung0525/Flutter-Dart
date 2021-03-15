void main() async{                         // main 비동기
  await getVersionName().then((value) => { // await 실행 완료시까지 뒤에 코드 실행 불가   -------- 1
    print(value)                           // 'Android 출력'                         // -------- 6
  });
  print('end process');                    // end process 출력                       // -------- 7
}


Future<String> getVersionName() async{     // 비동기. 리턴값(Android) Future에 저장됨.    -------- 2
  var versionName = await lookUpVersionName();                                       // -------- 3
  return versionName;                      // Android 리턴                           // -------- 5
}

String lookUpVersionName(){ // -------- 4
  return 'Android';
}



/*
    - then 함수 
     : 비동기 함수가 반환하는 값을 처리할 때 사용.
    
    
    << 실행 결과 >>
      Android
      end process

*/
