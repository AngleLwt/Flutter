import 'package:flutter/material.dart';

class DrawerDemot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      // 设置内边距
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // // 抽屉头部
          // DrawerHeader(
          //   child: Text("head".toUpperCase()),
          //   // 头部标签的背景颜色
          //   decoration: BoxDecoration(color: Colors.black26),
          // ),
          // 显示用户信息
          UserAccountsDrawerHeader(
            accountName: Text(
              'LiWentuo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("angle.lwt@qq.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.jsdelivr.net/gh/AngleLwt/images/image/IMG_0446.png"),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.jsdelivr.net/gh/AngleLwt/images/image/米老鼠'),
                //  图像填充
                fit: BoxFit.cover,
                // 添加滤镜(withOpacity 不透明度)（blendMode 混合模式）
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          // 抽屉栏内容
          ListTile(
            // TextAlign文字对其方式
            title: Text(
              'Messgae',
              textAlign: TextAlign.left,
            ),
            // 右边Icon设置图标(Colors)图标的颜色（size）大小
            trailing: Icon(
              Icons.message,
              color: Colors.cyan,
              size: 42.0,
            ),
            // 左边Icon设置图标(Colors)图标的颜色（size）大小
            // 设置点击关闭
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            // TextAlign文字对其方式
            title: Text(
              'icos',
              textAlign: TextAlign.right,
            ),
            // 右边Icon设置图标(Colors)图标的颜色（size）大小
            trailing: Icon(
              Icons.pages,
              color: Colors.yellow,
              size: 22.0,
            ),
            // 左边Icon设置图标(Colors)图标的颜色（size）大小
            // 设置点击关闭
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            // TextAlign文字对其方式
            title: Text(
              'angle',
              textAlign: TextAlign.right,
            ),
            // 右边Icon设置图标(Colors)图标的颜色（size）大小
            trailing: Icon(
              Icons.dashboard,
              color: Colors.pink,
              size: 22.0,
            ),
            // 设置点击关闭
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
