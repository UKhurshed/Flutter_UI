import 'package:flutter/material.dart';
import 'package:flutter_ui/presentation/Home.dart';
import 'package:flutter_ui/presentation/Operations.dart';
import 'package:flutter_ui/presentation/crm.dart';
import 'package:flutter_ui/presentation/documents.dart';
import 'package:flutter_ui/presentation/reports.dart';
import 'app_bar.dart';
import 'main_drawer.dart';


class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {


  final List<Widget> pages = [
    HomePage(key: PageStorageKey('Page1'),),
    Documents(key: PageStorageKey('Page2'),),
    Operations(key: PageStorageKey('Page3'),),
    Reports(key: PageStorageKey('Page4'),),
    crm(key: PageStorageKey('Page5'),)
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _currentIndex = 0;


  Widget _bottomNavigationBar(int currentIndex) =>
      BottomNavigationBar(
//        selectedIconTheme: IconThemeData(color: Colors.white),
//        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.blue[600],
        unselectedItemColor: Colors.black,
        onTap: (int index) => setState(() => _currentIndex = index),
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Справочники'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text('Документы'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cached),
            title: Text('Операции'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.poll),
            title: Text('Отчеты'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ring_volume),
            title: Text('CRM'),
          ),
        ],
      );


  @override
  Widget build(BuildContext context) {
    return HomeScaffold();
  }

  Scaffold HomeScaffold() {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_currentIndex),
        appBar: homeAppBar(),
        drawer: MainDrawer(),
      body: PageStorage(
        child: pages[_currentIndex],
        bucket: bucket,
      )
    );
  }
}
