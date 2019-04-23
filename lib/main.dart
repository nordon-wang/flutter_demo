import 'package:flutter/material.dart';
import 'package:my_flutter/home.dart';
import 'package:my_flutter/router.dart';
import 'package:my_flutter/tab.dart';

// 入口函数
void main(){
  runApp(
    App()
  );
}

class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title:'material title',
        // home: RouterDemo(),
        // home: MyTab(),
        // home: Home(),
        debugShowCheckedModeBanner: false, // 是否在右上角展示 debugger 
        initialRoute: '/',
        routes: {
          '/':(context) => MyTab(),
          '/home': (context) => Home(),
          '/tab': (context) => RouterDemo(),
        },
      );
    }
}


