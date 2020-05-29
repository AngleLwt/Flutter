import 'package:flutter/material.dart';
import 'model/base_demo.dart';
import 'model/listview_demo.dart';
import 'model/holleo_demo.dart';
import 'model/drawer_demo.dart';
import 'package:app_ios/model/bottomnavigation_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // 关闭debug条目
      debugShowCheckedModeBanner: false,
      // 首页
      home: Home(),
      // 主题
      theme: ThemeData(
        // 主题背景颜色
        primarySwatch: Colors.purple,
        // 设置高亮颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // (点击水波纹背景颜色)
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // 背景颜色
        backgroundColor: Colors.white,
        // 导航栏
        appBar: AppBar(
          // // 侧滑按钮如果设置抽屉责不用设置
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint("Navigation Btton is pressed"),
          // ),
          // 主题
          title: Text('AppBar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint("Search Btton is pressed"),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'more_horiz',
              onPressed: () => debugPrint("more_horiz Btton is pressed"),
            )
          ],
          // 导航栏阴影
          elevation: 10.0,
          bottom: TabBar(
            // 未选中标签颜色
            unselectedLabelColor: Colors.black38,
            // 下划线颜色
            indicatorColor: Colors.blue,
            // 下划线长度
            // indicatorSize: TabBarIndicatorSize.label,
            // 下划线粗细
            indicatorWeight: 1.0,
            // appBar标签
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.local_hospital)),
              Tab(icon: Icon(Icons.local_hotel)),
            ],
          ),
        ),
        // 内容主体
        body: TabBarView(
          // 每个页面的内容
          children: <Widget>[
            listViewDemo(),
            // Icon(
            //   Icons.local_florist,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            BaseDemo(),
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.yellow[200],
            ),
          ],
        ),
        // 抽屉栏（左边显示）
        drawer: DrawerDemot(),
        // 抽屉栏（右边显示）
        // endDrawer: Text("data"),
        bottomNavigationBar: BottomNavigatioBarDemos(),
      ),
    );
  }
}


