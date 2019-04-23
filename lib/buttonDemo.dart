import 'package:flutter/material.dart';

class ButtonDemo extends StatefulWidget{
  @override
  _ButtonDemo createState() => _ButtonDemo();
}

class _ButtonDemo extends State<ButtonDemo>{

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // 在组件内 抽取更小粒度的组件
  Widget flatButton(context){
    return  FlatButton(
      onPressed: (){
        print('文字按钮');
        Navigator.pop(context);
      },
      textColor: Colors.red,
      child:Text('返回上一级') ,
    );
  }

  @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 浮动按钮
            // FloatingActionButton(
            //   child: Text('浮动'),
            //   onPressed: (){
            //     print('object');
            //   }
            // )
            // 文字按钮
            flatButton(context),
            FlatButton(
              onPressed: (){
                print('文字按钮');
                Navigator.pushNamed(context, '/home');
              },
              textColor: Colors.red,
              child:Text('home') ,
            ),
            // 图标按钮
            FlatButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('图标按钮'),
              textColor: Colors.red,
              onPressed: (){

              },
            ),
            // 带效果的按钮
            RaisedButton(
              onPressed: (){
              },
              elevation: 1.0,
              child: Text(
                '带效果的按钮',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              color: Colors.blue,
              splashColor: Colors.red,
            ),
            RaisedButton.icon(
              icon:Icon(Icons.arrow_back),
              label: Text(
                '$_counter',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onPressed: (){
                _incrementCounter();
              },
              elevation: 1.0,
              color: Colors.blue,
              splashColor: Colors.red,
            ),
            // 带边框的按钮
            OutlineButton(
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                '带边框的按钮',
                style: TextStyle(
                  // color: Colors.black
                ),
              ),
              textColor: Colors.blue,
              splashColor: Colors.red,
              borderSide: BorderSide(
                color: Colors.red,
                width: 3.0
              ),
            )
          ],
        ),
      );
    }
}