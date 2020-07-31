import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme
                .of(context)
                .primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 100,
//                    margin: const EdgeInsets.only(bottom: 20),
                  ),
                  Text('VVMarket', style: TextStyle(color: Colors.white, fontSize: 24)),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Склад'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Магазины'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Виды расходов'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Товар'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Компании'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Оператор'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Категория'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Кассы'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Пользователи'),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Клиенты'),
                  onTap: null,
                ),
//                ListTile(
//                  leading: Icon(Icons.home),
//                  title: Text('Валюта'),
//                  onTap: null,
//                ),
              ],
            ),

          ),

        ],
      ),
    );
  }
}
