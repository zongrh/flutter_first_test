import 'package:flutter/material.dart';

//自定义listview
class MyHorizontailList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ListView(
//        scrollDirection: Axis.vertical,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
//            height: 180,
            width: 180,
            color: Colors.lightBlue,
          ),
          new Container(
//            height: 180,
            width: 180,
            color: Colors.lightGreen,
          ),
          new Container(
//            height: 180,
            width: 180,
            color: Colors.deepOrange,
          ),
          new Container(
//            height: 180,
            width: 180,
            color: Colors.deepOrangeAccent,
          ),
        ],
      ),
    );
  }
}

class MyVerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.access_time),
            title: new Text("临江仙"),
          ),
          new ListTile(
            leading: new Icon(Icons.account_balance),
            title: new Text("南城的人"),
          ),
          new Image.network(
              'https://images.unsplash.com/photo-1556741576-1d17b478d761?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
          new Image.network(
            'https://images.unsplash.com/photo-1556741576-1d17b478d761?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
            width: 100,
            height: 200,
          ),
          new Container(
            child: new Text("莫愁前路无知己"),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
          ),
          new Image.network(
            'http://pic1.win4000.com/wallpaper/c/53cdd1f7c1f21.jpg',
            scale: 2,
            color: Colors.lightBlue,
            colorBlendMode: BlendMode.darken,
            repeat: ImageRepeat.repeat,
          ),
        ],
      ),
    );
  }
}

class TextGridleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: GridView.count(
//        padding:表示内边距，这个小伙伴们应该很熟悉。
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
//        crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
        crossAxisSpacing: 80,
//        crossAxisCount:网格的列数，相当于一行放置的网格数量。
        crossAxisCount: 3,
        children: <Widget>[
          const Text('I am Jspang'),
          const Text('I love Web'),
          const Text('jspang.com'),
          const Text('我喜欢玩游戏'),
          const Text('我喜欢看书'),
          const Text('我喜欢吃火锅')
        ],
      ),
    );
  }
}

//加载图片GridView
class IconGridleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//        crossAxisCount:网格的列数，相当于一行放置的网格数量。
            crossAxisCount: 3,
//            每行的高度
            mainAxisSpacing: 10.0,
//            每列的间距
            crossAxisSpacing: 10.0,
//            childAspectRatio:宽高比，这个值的意思是宽是高的多少倍，
//            如果宽是高的2倍，那我们就写2.0，如果高是宽的2倍，我们就写0.5。
            childAspectRatio: 0.7),
        children: <Widget>[
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
        ],
      ),
      padding: EdgeInsets.all(10),
    );
  }
}

//list类型的使用
//var mylist = List():非固定长度的声明
//var mylist = List(2):固定长度的声明
//var mylist = List<String>():固定类型的声明方式
//var mylist = [1, 2, 3]:对List直接赋值

//水平布局Row的使用:Flutter的row控件是水平控件，它可以让row里面的子元素进行水平排列。
//row控件可以分为灵活排列和非灵活排列两种
/*非灵活性布局*/
class UnFlexibleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: () {
            print("红色按钮点击事件");
          },
          color: Colors.red,
          child: new Text("红色按钮"),
        ),
        new RaisedButton(
          onPressed: () {
            print("黄色按钮点击事件");
          },
          color: Colors.yellow,
          child: new Text("黄色按钮"),
          textColor: Colors.white,
        ),
        new RaisedButton(
          onPressed: () {
            print("粉色按钮点击事件");
          },
          color: Colors.pink,
          child: new Text("粉色按钮"),
        ),
      ],
    );
  }
}

//灵活布局
class FlexibleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.red,
            child: new Text("红色按钮"),
          ),
        ),
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.yellow,
            child: new Text("黄色按钮"),
          ),
        ),
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.blue,
            child: new Text("蓝色按钮"),
          ),
        ),
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.black,
            child: new Text("黑色按钮"),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

/*灵活和非灵活的水平布局混搭*/
class MixFlexibleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: () {},
          child: new Text("红色按钮"),
          color: Colors.red,
          textColor: Colors.white,
        ),
        Expanded(
          child: new RaisedButton(
            onPressed: () {},
            color: Colors.black,
            child: new Text("黑色按钮"),
            textColor: Colors.white,
          ),
        ),
        new RaisedButton(
          onPressed: () {},
          child: new Text("黄色按钮"),
          color: Colors.yellow,
          textColor: Colors.lightBlue,
        )
      ],
    );
  }
}
