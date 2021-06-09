import 'package:flutter/material.dart';
import 'map.dart';
import 'variants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      home: MyHomePage(title: 'AAAAA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List _screens = [
    VariantsPage(title: 'ONECLICK - Central COVID-19'),
    MapPage(title: 'Mapa do COVID-19')
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
          BottomNavigationBarItem(
              icon: Icon(Icons.language), label: 'Casos no Mundo')
        ],
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.lightGreen,
      ),
    );
  }
}
