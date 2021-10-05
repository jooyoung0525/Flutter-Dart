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

<br>

![fvm release](https://user-images.githubusercontent.com/29946480/135983782-d7f42cbf-0f6b-428e-b363-92b77d0971bf.PNG)


<br><br>

#### 4. fvm 버전 설치하기

    cmd 창 >> fvm install "원하는 버전"
    
*환경변수에서 추가한  "C:\Users\사용자이름\fvm\default\bin\"  해당 경로에 fvm버전이 설치된다.*

    
<br><br><br>

## VS Code에서 버전 관리하기 - 2가지 방법

<br>

#### 1. 터미널 이용
     
     VS Code Terminal >> fvm list >> fvm use "원하는 버전" >> 프로젝트 폴더에 .fvm 폴더 생성됨
     
<br>

* fvm list : 설치한 fvm 버전 확인

![fvmlist](https://user-images.githubusercontent.com/29946480/135983786-9b0812ea-7c78-428f-ab05-af03c77aca84.PNG)


<br>

* fvm use : 설치된 fvm 버전 사용


![fvmuse](https://user-images.githubusercontent.com/29946480/135983787-d216da25-18a2-4133-afe9-d58c233b3347.PNG)


<br>
<br>
<br>
<br>


#### 2. 우측 하단에서 클릭으로 버전관리

<br>

![dddd](https://user-images.githubusercontent.com/29946480/135984156-62a914cf-32c8-4e59-9929-96a8fb4ceca3.PNG)

<br>

    File >> Preferences >> Settings >> Extensions >> Dart&Flutter >> Edit in settings.json
    >> "dart.flutterSdkPaths":["fvm list 경로"]
    
 <br>
    
 ![vscode1](https://user-images.githubusercontent.com/29946480/135981066-1c3b866e-1885-468e-929e-b029a8f11e2a.png)
 
 <br>
 
 ![vscode2](https://user-images.githubusercontent.com/29946480/135981070-8d3db4a3-9b30-4867-8f19-ee562cb39e22.png)
 
 <br>
 
 ![vscode3](https://user-images.githubusercontent.com/29946480/135981072-55fb9dff-f5a1-4aa8-9677-92e792f6402d.PNG)
 
 <br>

<br><br><br>

## Android Studio에서 버전 관리하기 

<br>

#### 1. Flutter 프로젝트 Open 

<br>

#### 2. Android Studio 터미널

    fvm list >> fvm use "원하는 버전" >> 프로젝트 경로에 .fvm 폴더 생성

<br>

![ad](https://user-images.githubusercontent.com/29946480/135984699-cd8e8914-15b6-4284-9ccc-1f0cb2aaf806.PNG)

***만약 fvm use가 안될시, android studio를 관리자 권한으로 실행후 시도해본다.***

<br>


#### 3. Android Studio Flutter Sdk 경로 설정


    File >> Settings >> Languages & Frameworks >> Flutter >> Flutter SDK >> 프로젝트 폴더 경로 >> .fvm >> flutter_sdk
    
    *자동으로 fvm 버전 경로로 변환됨*
    
    
![fvm fluttersdk](https://user-images.githubusercontent.com/29946480/135981059-7f7a4795-e47c-425c-ab66-8febd2f79ff6.PNG)


<br>
