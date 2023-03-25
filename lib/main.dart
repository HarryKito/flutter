import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool AutoLogin = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ToDo list',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Haiiron''s Todo List"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Insert Account id",
                  ),
                ),
                padding: EdgeInsets.all(20),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Insert password",
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                child: Row(children: <Widget>[
                  Container(
                    child: Text("auto login"),
                  ),
                  Container(
                    child: Switch(
                        value: AutoLogin,
                        activeColor: Colors.lime,
                        onChanged: (bool value) {
                          AutoLogin = value;
                        }),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("id: password:"),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2.0))),
                            );
                          },
                        );
                      },
                      child: Text("log in"),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//MARK: ㅇ? 가독성은 개나줘버리는 아주 좋은 코드
//2023/03/26 => 일단 로그인 화면만 구현함. 
// 27일까지 Notion 정리하고,함수화해서 가독성 좀 올려보자.

/*
          child: Padding(
            child: TextField(
              decoration: InputDecoration(
                labelText: "Account id",
              ),
            ),
            padding: EdgeInsets.all(20.0),
          ),
           */