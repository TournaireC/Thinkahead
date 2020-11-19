import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Think AHead',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('->Think AHead<-'),
        ),
        body: Center(
          child: Text('Bienvenue dans Think AHead !'),
        ),
      ),
    );
  }
}
