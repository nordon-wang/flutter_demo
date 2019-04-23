import 'package:flutter/material.dart';

// 侧边栏组件
class DrawerList extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          // padding: EdgeInsets.all(0.0),
          padding: EdgeInsets.only(top: 0.0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  'Drawer child',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white30
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('111'),
              leading: Icon(Icons.supervisor_account),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('222'),
              leading: Icon(Icons.gradient),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      );
    }
}