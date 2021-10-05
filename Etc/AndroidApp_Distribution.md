<br>

# Flutter Project를 안드로이드 스튜디오로 배포하는 법

<br><br>
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

#### 5. 안드로이드 스튜디오 터미널에서 flutter clean >> flutter pub get >> fvm use "프로젝트 flutter 버전" >> fvm flutter run


<br>

#### 6. 두가지 중 하나의 방법으로 Open for Editing in Android Studio 실행

