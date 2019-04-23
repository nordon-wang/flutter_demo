import 'package:flutter/material.dart';


class ColmunDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.pink[100],
        width: double.infinity,
        height: 180.0,
        margin: EdgeInsets.only(top:12.0, bottom:12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.cloud, size:20.0),
            Icon(Icons.cloud_done, size:24.0),
            Icon(Icons.cloud_circle, size:28.0),
            Icon(Icons.cloud_download, size:30.0),
          ],
        ),
      );
    }
}