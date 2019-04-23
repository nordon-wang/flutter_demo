import 'package:flutter/material.dart';

// 固定宽高比组件
class AspectRatioDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return AspectRatio(
        aspectRatio:5/1,
        child: Container(
          color: Colors.grey,
          child: Text('Esse sunt id fugiat occaecat proident dolor voluptate quis proident velit exercitation.'),
        ),
      );
    }
}

// AspectRatio(
//   aspectRatio: 4/3,
//   child: Image.asset(
//     'images/logo.png',
//     // fit: BoxFit.contain,
//   ),
// )