import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ToDo list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Haiiron''s Todo List'),
      ),
      body: Center(
        child: Padding(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'id',
            ),
          ),
          padding: EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}