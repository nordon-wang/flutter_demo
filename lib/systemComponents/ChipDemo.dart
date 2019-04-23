import 'package:flutter/material.dart';

class ChipDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Chip(
        label: Text('标签'),
        backgroundColor: Colors.grey,
        avatar: CircleAvatar(
          foregroundColor: Colors.white70,
          backgroundColor: Colors.yellow,
          child: Text('E'),
        ),
        deleteIcon: Icon(Icons.sentiment_dissatisfied),
        onDeleted: (){
          print('点击标签icon');
        },
      );
    }
}
