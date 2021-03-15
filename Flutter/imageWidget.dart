import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget {
  @override
  _ImageWidgetAppState createState() => _ImageWidgetAppState();
}

class _ImageWidgetAppState extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/tree.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.fill,
              ),
              Text(
                'Tree',
                style: TextStyle(
                    fontFamily: 'Pacfico', fontSize: 30, color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
