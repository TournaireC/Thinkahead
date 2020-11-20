import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Think AHead',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return new _Home();
  }
}

class _Home extends State<Home>{
  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget> [
    Text(
      "Le mode Solo !",
      style: optionStyle,
    ),
    Text(
      """
      Bonjour à vous ! 
      Bienvenue dans Think AHead !
      
      """,

    ),
    Text(
      "Le mode Mutlijoueur noice",
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('-> Think AHead <-'),
        leading: Icon(Icons.play_arrow),
        centerTitle: true,
        elevation: 15.0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.white70,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Solo",),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label : "1 vs 1"),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}