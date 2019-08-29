import 'package:flutter/material.dart';

/*
页面跳转并返回数据：
异步请求和等待：Dart的异步请求和等待直接使用async...wait就可以实现
*/
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: new RuteButton(),
      ),
    );
  }
}

//跳转的按钮
class RuteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        _navigateToPhone(context);
      },
      child: new Text("获取电话号码"),
    );
  }

  _navigateToPhone(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => GetPhone()));
    Scaffold.of(context).showSnackBar(new SnackBar(
      backgroundColor: Colors.black,
      content: new Text('${result}',style: TextStyle(
        color: Colors.red,
      ),),
    ));
  }
}

class GetPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("获取电话"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new RaisedButton(
              child: new Text("暗夜猎手"),
              onPressed: () {
                Navigator.pop(context, "暗夜猎手  17796825231");
              },
            ),
            new Divider(),
            new RaisedButton(
              child: new Text("放逐之刃"),
              onPressed: () {
                Navigator.pop(context, "放逐之刃  17796825231");
              },
            )
          ],
        ),
      ),
    );
  }
}
