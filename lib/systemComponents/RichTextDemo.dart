import 'package:flutter/material.dart';


class RichTextDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return RichText(
        text: TextSpan(
          text: '注意，',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20.0
          ),
          children: [
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              )
            ),
            TextSpan(
              text: '的渠道版本会不停变动，请以'
            ),
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
              )
            ),
            TextSpan(
              text: '官网为准。另外，在中国大陆地区，要想正常获取安装包列表或下载安装包，可能需要翻墙，读者也可以去Flutter github项目下去下载安装包'
            )
          ]
        ),
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      );
    }
}