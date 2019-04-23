import 'package:flutter/material.dart';


class PageDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return ListView(
        children: <Widget>[
          // 图片
          AspectRatio(
            aspectRatio:2/1,
            child: Image.asset(
              'images/logo.png',
              // fit: BoxFit.contain,
            ),
          ),
          // 标题
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // 标题
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Spend less, the better',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox( // 用于填充 空间
                        height: 5.0,
                      ),
                      Text(
                        'Convenient and affordable',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                // icon
                Icon(Icons.star, color: Colors.blue[100],),
                SizedBox(width: 3.0,),
                Text('0')
              ],
            ),
          ),
          // 按钮
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              PulicIcon(Icons.phone, 'phone'),
              PulicIcon(Icons.cloud, 'cloud'),
              PulicIcon(Icons.share, 'share'),
            ],
          ),
          // 长文字 
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Quis occaecat dolor nostrud incididunt ullamco minim aliquip aliqua. Velit aliqua aliquip anim aliqua nisi reprehenderit laborum cupidatat labore. Do magna in ut ad. Elit ea adipisicing minim ipsum irure elit voluptate ea nostrud quis exercitation. Nisi ad aute cupidatat dolor qui eiusmod cupidatat eiusmod.Non sit velit velit elit ex nostrud excepteur quis exercitation deserunt pariatur nostrud duis. Ad proident qui proident eiusmod cupidatat dolor quis magna est. Officia id ullamco commodo id proident sint amet qui anim consectetur. Eiusmod nisi ullamco laborum cillum amet quis ullamco commodo consequat.')
          ),
          
        ],
      );
    }
}


// 图标 组件
class PulicIcon extends StatelessWidget{
  // 定义变量
  final String text;
  final IconData icon;

  // 接收
  PulicIcon(this.icon, this.text);

  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue ),
          SizedBox(height: 5.0,),
          Text(text, style: TextStyle(
            color: Colors.blue
          ),)
        ],
      );
    }
}


// class ModelDemo extends StatelessWidget{
//   // 
//   final is 

//   ModelDemo()

//   @override
//     Widget build(BuildContext context) {
//       return ModalBarrier();
//     }
// }