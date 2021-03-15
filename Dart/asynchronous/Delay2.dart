void main(){
  printOne(); 
  printTwo();  
  printThree();
}

void printOne(){
    print('One');             // ------------- 1
}

void printThree(){
    print('Three');          // ------------- 2
}

void printTwo() async{
    await Future.delayed(Duration(seconds : 2), (){ // await이후 코드 모두 정지. -> main먼저 실행
        print("Future!!");  // -------------  3
    });
  print('Two');             // -------------  4
}


/*

  - await 키워드를 사용하면 await가 속한 함수를 호출한 쪽의 프로세스가 끝날 때까지 기다림. 

  << 실행 결과 >> 
  One
  Three
  Future!!
  Two
    
*/
