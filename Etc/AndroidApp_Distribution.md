<br>

# Flutter Project를 안드로이드 스튜디오로 배포하는 법

<br><br>
<br>

## <<배포용 aab파일 생성>>

<br>

#### 1. Git master 브랜치에서 최신으로 Pull.

<br>

#### 2. 안드로이드 스튜디오 (관리자 권한으로 실행 -> fvm use 사용위해 필요) 에서 프로젝트 폴더 Open

<br>

#### 3. 프로젝트 폴더 >> android >> 프로젝트명_android.iml 파일 있는지 확인! 
*(없다면 안드로이드 프로젝트 생성후 해당 파일 복붙해서 폴더에 넣어주기)*

  * 해당 파일이 있어야 안드로이드에서 "Open for Editing in Android Studio" 활성화   
 
  * Android Studio로 열어야 "Build >> Generate signed bundle or apk" 메뉴 생성됨 
   
   <br>
   
![iml](https://user-images.githubusercontent.com/29946480/135972186-9dc1f271-30ef-47cd-acc4-fa0c41e6f9e9.PNG)



#### 4. 아래의 프로젝트 파일에서 버전 변경

    * Pubspec.yaml -> version 변경
    * android/app/build.gradle -> versionName, versionCode 변경
    * android/gradle/local.properties -> versionName, versionCode 변경

<br>

#### 5. 안드로이드 스튜디오 터미널
* flutter clean >> flutter pub get >> fvm use "프로젝트 flutter 버전" >> fvm flutter run


<br>
<br>

#### 6. 두가지 중 하나의 방법으로 Open for Editing in Android Studio 실행

* 프로젝트 폴더 >> android >> 아무 파일 클릭 >> 프로젝트 우측 상단에 Open for Editing in Android Studio 클릭

![open](https://user-images.githubusercontent.com/29946480/135974074-c974d06d-9951-479f-a302-f79fb1b137d4.PNG)


<br>


* Tools >> Flutter >> Open for Editing in Android Studio 클릭

![tool](https://user-images.githubusercontent.com/29946480/135974077-c3713049-5d22-40ae-a39d-2858eb36af7d.png)
)

<br>

### 7. aab 파일 생성하기 

* Build >> Generate Signed Bundle or Apk 

![app bundle](https://user-images.githubusercontent.com/29946480/135975314-38ac325d-092b-4730-a43a-20892ee7e397.png)

<br>


*  App Bundle >> Key Store 정보 입력 ( Export ~~ 체크박스 해제 ) 

*-> Apk 파일로 생성해도 되지만, aab 파일이 용량이 작음*


*key store path는 처음 앱 생성시 만들어진 keystore파일 적용*
 
![key store path](https://user-images.githubusercontent.com/29946480/135975316-4e17ceee-be75-4dc9-a62f-36ff5898bdbe.PNG)
![keystore2](https://user-images.githubusercontent.com/29946480/135975318-0d8a2de6-aff2-4eab-9a2b-3a1f9d5e6b9b.PNG)

<br>

*  release >> Finish >> "프로젝트위치"\android\app\release에 .aab파일 

<br><br>

## <<Google play Console 에 비공개 테스트 올리기>>

<br>

#### 1. Google 로그인 및 Google play store console 접속

#### 2. 

     테스트 >> 비공개 테스트 >> 트랙관리 >> 새 버전 만들기 >> 파일업로드 (생성한 aab파일 업로드) >> 출시 노트  
     >> 이전 버전에서 복사 (이전과 노트 동일할 시) >> 저장 >> 버전 검토 >> alpha 트랙으로 출시 ( 네티이브~~ 경고 무시해도됨 ) >> 버전이 올라갈때까지 기다리기!


