import 'package:flutter/material.dart';
import 'package:my_flutter/systemComponents/ColmunDemo.dart';
import 'package:my_flutter/systemComponents/ContainerDemo.dart';
import 'package:my_flutter/systemComponents/RichTextDemo.dart';
import 'package:my_flutter/systemComponents/RowDemo.dart';
import 'package:my_flutter/systemComponents/TextDemo.dart';


// 定义组件
class Hello extends StatelessWidget{
  // Widget flatButton(){

  // }

  build(BuildContext context){
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'StatelessWidget 无状态组件',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic
                )
              ),
              TextDemo(),
              ContainerDemo(),
              RichTextDemo(),
              ColmunDemo(),
              RowDemo(),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Text('跳转主页'),
              )
            ],
          )
        ),
      ),
    );
  }
}