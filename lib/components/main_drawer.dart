import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ui/data/main_drawer_items.dart';

class MainDrawer extends StatelessWidget {
  List<MainDrawerItems> _drawerItems = itemsList;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Colors.blue[800], Colors.blue[700], Colors.blue[400]],
            )),
            accountName: Text('Bezos'),
            accountEmail: Text('ad@bezos.tj'),
            currentAccountPicture: CircleAvatar(
              child: Image.asset("assets/images/logo.png", width: 40, height: 40,),
              backgroundColor: Colors.blue[900],
            ),
          ),
//          DrawerHeader(
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topCenter,
//                  colors: [Colors.blue[800], Colors.blue[700], Colors.blue[400]]
//              ),
//            ),
//            child: Center(
//              child: Container(
//                child: Text('VVMarket',
//                    style: TextStyle(color: Colors.white, fontSize: 24)
//                ),
//              ),
//            ),
//          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: itemsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {},
                  title: Text(_drawerItems[index].itemsTitle),
                  leading: Icon(_drawerItems[index].itemsIcon),
                );
              }),
        ],
      ),
    );
  }
}
