import 'package:flutter/material.dart';

// 带状态的组件

// 处理状态
class FormDemo extends StatefulWidget{
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

// 处理组件
class _InputWidgetState extends State<FormDemo>{

  String username;
  String password;

  _login(){
    print(username);
    print(password);
  }

  @override
    Widget build(BuildContext context){
      return Padding(
        padding: EdgeInsets.all(20.0),
        child:  Column(
          children: <Widget>[
            // TextField(
            //   decoration: InputDecoration(
            //     icon: Icon(Icons.sentiment_dissatisfied),
            //     labelText: '用户名',
            //     hintText: '请输入用户名',
            //     filled: true,
            //     fillColor: Colors.grey[300],
            //     border: InputBorder.none
            //   ),
            //   onChanged: (value){
            //     print(value);
            //   },
            // ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.mobile_screen_share,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12
                  )
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12
                  )
                ),
                hintText: '请输入手机',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0
                )
              ),
              onChanged: (value){
                print(value);
                setState(() {
                  username = value;        
                });
              },
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.code,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12
                  )
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12
                  )
                ),
                hintText: '请输入密码',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0
                )
              ),
              onChanged: (value){
                print(value);
                setState(() {
                  password = value;        
                });
              },
            ),
            SizedBox(height: 20.0,),
            Container(
              width: double.infinity,
              child: RaisedButton(
              color: Colors.blue,
                onPressed: (){
                  _login();
                },
                child: Text(
                  'login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
}


// 输入组件
// class FormDemo extends StatelessWidget{
//   @override
//     Widget build(BuildContext context) {
//       return ;
//     }
// }