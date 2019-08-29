import 'package:flutter/material.dart';

/*
垂直布局

主轴和副轴的辨识：
mainAxisAlignment属性：主轴的对称方式。
~mian轴：如果你用Column组件，那垂直就是主轴，如果你用Row组，那水平就是主轴。
~cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。Row组件垂直就是幅轴，Column组件水平就是幅轴
*/
class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Expanded(
          child: Text("垂直布局2"),
        ),
        Expanded(
          child: Text("垂直布局2"),
        ),
        Center(
          child: Text("垂直布局3"),
        ),
      ],
      //CrossAxisAlignment.star：居左对齐。
      //CrossAxisAlignment.end：居右对齐。
      //CrossAxisAlignment.center：居中对齐。
      //副轴（水平方向）
      crossAxisAlignment: CrossAxisAlignment.end,
      //主轴(垂直方向)
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}

//main轴：如果你用column组件，那垂直就是主轴，如果你用Row组件，那水平就是主轴。
//cross轴：cross轴我们称为幅轴，是和主轴垂直的方向。比如Row组件，那垂直就是幅轴，
// Column组件的幅轴就是水平方向的。
class ColumnLayoutText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text('I am JSPang'),
        Text('my website is jspang.com'),
        Text('I love coding')
      ],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

/*
Stack层叠布局：适用于放入一个图片，图片上再写一写文字或者放入容器。

层叠布局的alignment属性是控制层叠位置的，建议两个内容进行层叠时使用。
它有两个值X轴距离和Y轴距离，值是从0到1的，都是从上层容器的左上角开始算起的。

CircleAvatar组件的使用：CircleAvatar这个经常用来作头像的，组件里面有个radius的值
可以设置图片的弧度。

Stack的Positioned属性（层叠定位组件）
Positioned组件的属性：
bottom：距离层叠组件下边的距离
left：距离层叠组件左边的距离
top：距离层叠组件上边的距离
right：距离层叠组件右边的距离
width：层叠定位组件的宽度
height：层叠定位组件的高度
*/
class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              "http://pic1.win4000.com/wallpaper/c/53cdd1f7c1f21.jpg"),
          radius: 100,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.transparent),
          padding: EdgeInsets.all(50),
          child: new Text(
            "江仙",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        new Positioned(
          child: Text(
            "测试 Positioned ",
          ),
          top: 20,
          left: 50,
        ),
        new Positioned(
          child: Text(
            "德玛西亚万岁 ",
            style: TextStyle(color: Colors.red),
          ),
          bottom: 20,
          right: 0,
        )
      ],
    );
  }
}

class MoreStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        new Image(image: new AssetImage('images/test1.jpg')),
        new Image.network(
          'http://pic1.win4000.com/wallpaper/c/53cdd1f7c1f21.jpg',
          scale: 2,
          color: Colors.lightBlue,
          colorBlendMode: BlendMode.darken,
          repeat: ImageRepeat.repeat,
        ),
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              "http://pic1.win4000.com/wallpaper/c/53cdd1f7c1f21.jpg"),
          radius: 100,
        ),
        new Positioned(
          child: new Text(
            '啦啦啦德玛西亚万岁',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontSize: 28,
            ),
          ),
          top: 10,
          left: 10,
        ),
        new Positioned(
          child: new Text(
            '放逐之刃',
            style: TextStyle(
                color: Colors.red, fontStyle: FontStyle.italic, fontSize: 24),
          ),
          bottom: 10,
          right: 10,
        ),
      ],
    );
  }
}

/*
卡片式布局：类似ListView
*/
class NewCardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("放逐之刃，德玛西亚万岁"),
            subtitle: new Text("断剑重铸之日骑士归来之时"),
            leading: new Icon(
              Icons.account_balance,
              color: Colors.red,
            ),
          ),
          new Divider(),
          ListTile(
            title: Text("放逐之刃，德玛西亚万岁"),
            subtitle: new Text("断剑重铸之日骑士归来之时",style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontStyle: FontStyle.italic

            ),),
            leading: new Icon(
              Icons.access_alarm,
              color: Colors.blue,
            ),
          ),
          new Divider(),
        ],
      ),
    );
  }
}
