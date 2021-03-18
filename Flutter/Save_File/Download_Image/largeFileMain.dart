import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class LargeFileMain extends StatefulWidget {
  @override
  _LargeFileMainState createState() => _LargeFileMainState();
}

class _LargeFileMainState extends State<LargeFileMain> {
  final imgUrl =
      'https://images.pexels.com/photos/240040/pexels-photo-240040.jpeg?auto=compress';
  bool downloading = false;
  var progressString = "";
  var file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Large File Example'),
        ),
        body: Center(
            child:
                downloading //downloading이 true면 Container, false면 futurebuilder실행
                    ? Container(
                        height: 120,
                        width: 200,
                        child: Card(
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircularProgressIndicator(),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Downloading File : $progressString',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    : FutureBuilder(
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.none: // FutureBuilder.future가 null
                              print('none');
                              return Text('데이터 없음');
                            case ConnectionState.waiting: // FutureBuilder.future에서 데이터를 반환받지 않았을때, 연결되기 전)
                              print('waiting');
                              return CircularProgressIndicator();
                            case ConnectionState.active: // 하나 이상의 데이터를 반환받을 때
                              print('active');
                              return CircularProgressIndicator();
                            case ConnectionState.done: // 모든 데이터를 받아서 연결이 끝날 때
                              print('done');
                              if (snapshot.hasData) {
                                return snapshot.data;
                              }
                          }
                          print('end process');
                          return Text('데이터 없음');
                        },
                        future: downloadWidget(file),
                      )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            downloadFile();
          },
          child: Icon(Icons.file_download),
        ));
  }

  Future<void> downloadFile() async {
    Dio dio = Dio(); // http같은거
    try {
      var dir = await getApplicationDocumentsDirectory();
      await dio.download(imgUrl, '${dir.path}/myimage.jpg',
          onReceiveProgress: (rec, total) {
        //rec: 현재까지 내려받은 데이터, total: 파일 전체크기
        print('Rec: $rec, Total: $total');
        file = '${dir.path}/myimage.jpg';
        setState(() {
          downloading = true;
          progressString = ((rec / total) * 100).toStringAsFixed(0) + "%"; //진행률
        });
      });
    } catch (e) {
      print(e);
    }

    setState(() {
      downloading = false;
      progressString = 'Completed';
    });

    print('Download completed');
  }

  Future<Widget> downloadWidget(String filePath) async {
    File file = File(filePath);
    bool exist = await file.exists();
    new FileImage(file).evict(); // 캐시 초기화

    if (exist) {
      return Center(
        child: Column(
          children: <Widget>[Image.file(File(filePath))],
        ),
      );
    } else {
      return Text('No Data');
    }
  }
}
