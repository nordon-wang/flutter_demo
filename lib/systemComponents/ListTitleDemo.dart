import 'package:flutter/material.dart';

// 列表组件
class ListTitleDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return ListTile(
        title: Text('个人中心'),
        subtitle: Text('进入个人主页'),
        leading: Icon(Icons.supervisor_account),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          print('click 个人中心');
        },
      );
    }
}