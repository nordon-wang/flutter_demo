import 'package:flutter/material.dart';
import 'package:my_flutter/buttonDemo.dart';
import 'package:my_flutter/drawerList.dart';
import 'package:my_flutter/formDemo.dart';
import 'package:my_flutter/hello.dart';
import 'package:my_flutter/moreComponents.dart';
import 'package:my_flutter/pageDemo.dart';

// 定义导航栏 组件
class MyTab extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 5, // 控制标签栏 数量
        child: Scaffold(
          appBar: AppBar(
            title:Text(
              '标题',
              style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              fontSize: 20.0
              )
            ),
            elevation: 2.0, // 阴影
            leading: Icon(Icons.menu),
            actions: <Widget>[
              Icon(Icons.search),
              // Icon(Icons.send),
            ],
            bottom: TabBar(
              labelColor: Colors.white54,
              labelStyle: TextStyle(
                fontSize: 16.0
              ),
              unselectedLabelColor: Colors.black87,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.0
              ),
              indicatorColor: Colors.black45,
              indicatorWeight: 3.0,
              indicatorSize: TabBarIndicatorSize.label, // 选中下边的线 适应文字
              tabs: <Widget>[
                Tab(
                  text: '按钮',
                ),
                Tab(
                  text: '输入组件',
                ),
                Tab(
                  text:'更多组件'
                ),
                Tab(
                  text: '案例',
                ),
                Tab(
                  text: '练习',
                )
              ],
            ),
          ),
          // body: Hello(),
          body: TabBarView(
            children: <Widget>[
              ButtonDemo(),
              FormDemo(),
              MoreComponents(),
              PageDemo(),
              Hello(),
            ],
          ),
          drawer: DrawerList(),
        ),
      );
    }
}
