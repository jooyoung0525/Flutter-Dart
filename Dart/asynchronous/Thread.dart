void main(){
  printOne(); 
  printTwo();  
  printThree();
}

void printOne(){
    print('One');             // ------------- 1
}

void printThree(){
    print('Three');          // ------------- 4
}

void printTwo() async{
    Future.delayed(Duration(seconds : 1), (){ // Future를 1초 지연함. 
        print("Future!!");  // ------------- 3
    });
  print('Two');             // ------------- 2
}



/*
   - 다트는 하나의 스레드로 동작하는 프로그래밍 언어이기 때문에 await를 잘 사용해야 함.
   
   << 실행 결과 >>
   
   One
   Two
   Three
   Future
   
*/
