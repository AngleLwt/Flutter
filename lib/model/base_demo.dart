import 'package:flutter/material.dart';

class BaseDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 15.0,
  );

  final String _author = 'LiWenTuo';
  final String _title = 'angle';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《$_title》---$_author. will abandon you for all, and demons will abandon the whole world for you!',
      // 文字剧中显示
      textAlign: TextAlign.center,
      // 设置样式
      style: _textStyle,// _textStyle定义的变量
      // 限制行数
      maxLines: 1,
      // 超出部分
      overflow: TextOverflow.ellipsis,//(ellipsis)省略

    );
  }
}
