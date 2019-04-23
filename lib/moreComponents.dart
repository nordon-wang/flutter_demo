import 'package:flutter/material.dart';
import 'package:my_flutter/systemComponents/AspectRatioDemo.dart';
import 'package:my_flutter/systemComponents/ChipDemo.dart';
import 'package:my_flutter/systemComponents/ListTitleDemo.dart';
import 'package:my_flutter/systemComponents/StackDemo.dart';

class MoreComponents extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return ListView(
        children: <Widget>[
          // 固定宽高比组件
          AspectRatioDemo(),
          SizedBox(height: 10.0,),
          StackDemo(),
          ListTitleDemo(),
          Divider(
            color: Colors.red,
            height: 10.0,
          ), // 线
          ListTitleDemo(),
          Divider(),
          ListTitleDemo(),
          ChipDemo()
        ],
      );
    }
}