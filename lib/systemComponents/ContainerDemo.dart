import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Container(
        // width: 200.0,
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.grey,
          // border: Border(
          //   top:BorderSide(
          //     color: Colors.red,
          //     width: 3.0,
          //     style: BorderStyle.solid
          //   )
          // )
          border: Border.all(
              color: Colors.red,
              width: 3.0,
              style: BorderStyle.solid
          ),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(12.0),
          //   topRight: Radius.circular(12.0),
          //   bottomLeft: Radius.circular(12.0),
          //   bottomRight: Radius.circular(12.0)
          // )
          borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),
        margin: EdgeInsets.only(top:20.0, bottom:22.0, left: 12.0, right: 12.0),
        padding: EdgeInsets.all(10),
        child: Text('data'),
        // child: Center(
        // ),
      );
    }
}