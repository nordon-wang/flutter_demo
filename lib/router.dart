import 'package:flutter/material.dart';

class RouterDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('路由'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            // 路由跳转
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => MyTab()
            //   )
            // );
            Navigator.pushNamed(context, '/home');
          },
          child: Text('浮动'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Text('Lorem irure sit ullamco commodo duis ullamco ea exercitation mollit officia et deserunt.'),
      );
    }
}

class ButtomDemo {
}