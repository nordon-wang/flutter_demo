import 'package:flutter/material.dart';
import 'package:my_flutter/drawerList.dart';
import 'package:my_flutter/hello.dart';

// 定义导航栏 组件
class Home extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title:Text(
            'AppBar 标题',
            style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            fontSize: 20.0
            )
          ),
          elevation: 2.0, // 阴影
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Icon(Icons.search),
            // Icon(Icons.send),
          ],
        ),
        body: Hello(),
        drawer: DrawerList(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/tab');
          },
          child: Icon(Icons.arrow_back),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        resizeToAvoidBottomPadding:false
      );
    }
}
