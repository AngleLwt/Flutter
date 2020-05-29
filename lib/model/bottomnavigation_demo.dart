
import 'package:flutter/material.dart';


class BottomNavigatioBarDemos extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bottomNavigatioBarDemoState();
  }
}
  class  _bottomNavigatioBarDemoState extends State<BottomNavigatioBarDemos>{
     int _currentIndex =0;

  void _onTapHandler(int index){
    setState(() {
      _currentIndex=index;
    });
  }
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          // 如果底部导航栏大于三需要通过BottomNavigationBarType重定义导航栏
          type: BottomNavigationBarType.fixed,
          // 设置激活后的颜色
          fixedColor: Colors.blue,
          // 设置激活状态
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              title: Text("收藏"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              title: Text("导航"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("我的"),
            ),
          ],
        );

  }

  }