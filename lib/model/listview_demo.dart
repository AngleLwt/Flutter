
import 'package:flutter/material.dart';
import 'post.dart';


class listViewDemo extends StatelessWidget{
   Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color:Colors.white70,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[  
            Text(posts[index].title),  
          Image.network(posts[index].imageUrl),
          Text(posts[index].name),
        
          SizedBox(height:26.0),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
      );
  }

}