import 'package:flutter/material.dart';

// 层叠堆放组件
class StackDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100.0,
            color: Colors.blue,
          ),
          Positioned(
            left: 42.0,
            child: Text('层叠堆放组件'),
          ),
          Positioned(
            left: 12.0,
            child: Icon(Icons.ac_unit, color:Colors.white, size: 20.0),
          ),
          Positioned(
            left: 20.0,
            top: 30.0,
            child: Text('Nulla ut excepteur in ad et.'),
          )
        ],
      );
    }
}