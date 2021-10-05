
![fvm fluttersdk](https://user-images.githubusercontent.com/29946480/135981059-7f7a4795-e47c-425c-ab66-8febd2f79ff6.PNG)

<br><br>

# fvm으로 flutter version 관리하기

<br>

    flutter개발환경 세팅할 때, flutter sdk를 설치하지 않고 fvm을 활용하여 버전을 관리한다.


<br><br><br>


#### 1. dart-sdk를 원하는 경로에 설치

 ![다트](https://user-images.githubusercontent.com/29946480/135981031-6d868c9f-d807-4320-ba3e-4e9d42152c2f.PNG)


<br><br>


#### 2. fvm 설치 시 필요한 환경변수를 시스템 변수에 추가한다. 

![시스템](https://user-images.githubusercontent.com/29946480/135981064-4ef5bec3-c45c-4186-b21c-abc950058a6d.PNG)

    
    내 PC >> 우클릭 >> 속성 >> 우측 메뉴 고급 시스템 설정 >> 환경 변수 >> 하단 시스템 변수 >> Path목록에 경로 추가
    
![환경변수](https://user-images.githubusercontent.com/29946480/135981062-c8f4f267-fcbb-4136-8ddf-a6a3e6290f73.PNG)


<br><br>


#### 3. 관리자모드로 cmd 실행

    cmd >> 우클릭 >> 관리자모드로 실행 >> dart pub global activate fvm >> fvm releases >> 원하는 버전 install 
    >> fvm global stable


<br><br>

#### 4. fvm 버전 설치하기

    cmd 창 >> fvm install "원하는 버전"
    
*환경변수에서 추가한  "C:\Users\사용자이름\fvm\default\bin\"  해당 경로에 fvm버전이 설치된다.*

    
<br><br><br>

## VS Code에서 버전관리하기 - 2가지 방법

<br>

#### 1. 터미널 이용
     
     VS Code Terminal >> fvm list >> fvm use "원하는 버전" >> 프로젝트 폴더에 .fvm 폴더 생성됨
     
<br>

#### 2. 우측 하단에서 클릭으로 버전관리



    File >> Preferences >> Settings >> Extensions >> Dart&Flutter >> Edit in settings.json
    >> "dart.flutterSdkPaths":["fvm list 경로"]
    
 <br>
    
 ![vscode1](https://user-images.githubusercontent.com/29946480/135981066-1c3b866e-1885-468e-929e-b029a8f11e2a.png)
 
 <br>
 
 ![vscode2](https://user-images.githubusercontent.com/29946480/135981070-8d3db4a3-9b30-4867-8f19-ee562cb39e22.png)
 
 <br>
 
 ![vscode3](https://user-images.githubusercontent.com/29946480/135981072-55fb9dff-f5a1-4aa8-9677-92e792f6402d.PNG)
 
 <br>
