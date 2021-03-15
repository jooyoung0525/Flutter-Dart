void main(){

  checkVersion(); // 비동기 ------------- 1번,
  print('hello'); //       ------------- 2번
}

Future checkVersion() async{ //비동기 함수 -> main 먼저 실행.
var version = await lookUpVersion(); //  ------------------- 3번, await :  실행완료까지 다음 코드 실행 불가. 
print(version); // -------------- 5번/ -------------- 5번
}


int lookUpVersion(){

return 12; // ----------------- 4번

}
