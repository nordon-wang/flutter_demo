import 'package:flutter/material.dart';


class RowDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.pinkAccent[100],
        height: 60.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.cloud, size:20.0, color: Colors.white),
            Icon(Icons.cloud_done, size:24.0),
            Icon(Icons.cloud_circle, size:28.0),
            Icon(Icons.cloud_download, size:30.0),
          ],
        ),
      );
    }
}