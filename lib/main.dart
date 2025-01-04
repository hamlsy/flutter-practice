import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp( home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("TeSTESTT"),
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {

              int random = Random().nextInt(8)+1;
              String msg = "ㅎㅇ ㅋㅋ";
              for(int i = 0 ; i< random; i++){
                msg += "ㅋㅋ";
              }
              print(msg);
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  title: Text("ㅎㅇ?"),
                  content: Text(msg),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Text("ㄲㅈ"))
                  ],
                );
              });
            }, child: Text("ㅎㅇ 버튼"))
          ],
        )
      )
    );
  }
}

