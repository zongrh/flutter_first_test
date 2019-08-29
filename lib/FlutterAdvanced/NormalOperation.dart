import 'package:flutter/material.dart';

class KeepPageAlive extends StatefulWidget {
  _KeepPageAliveState createState() => _KeepPageAliveState();
}

/*
with是dart的关键字，意思是混入的意思，
就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类，
避免多重继承导致的问题。
SingleTickerProviderStateMixin 主要是我们初始化TabController时，
需要用到vsync ，垂直属性，然后传递this
*/
class _KeepPageAliveState extends State<KeepPageAlive>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

//  重写被释放方法，只释放 TabController
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Keep Alive Demo'),
            bottom: TabBar(
              controller: _controller,
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            )),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[Text('1111'), Text('2222'), Text('3333')],
        ));
  }
}

/*保持状态页面2的效果 一个按钮点击加一*/
class KeepButtonAlive extends StatefulWidget {
  KeepButtonAliveState createState() => KeepButtonAliveState();
}

class KeepButtonAliveState extends State<KeepButtonAlive>
    with AutomaticKeepAliveClientMixin {
  int counter = 0;

//    重写KeepAlive 为true ，就是可以有记忆功能了
  @override
  bool get wantKeepAlive => true;

  void inCrementCounter() {
    setState(() {
//      counter = counter + 2;
      counter++;
      print("此时的counter为==== 》 " + '${counter}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下加一，点一下加一：'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: inCrementCounter,
        tooltip: "InCrement",
        child: Icon(Icons.add),
      ),
    );
  }
}

/*
流式布局，模拟添加照片的效果：
使用meidaQuery媒体查询：可以得到屏幕的宽和高

final kScreenWidth = MediaQuery.of(context).size.width;
final kScreenHeight = MediaQuery.of(context).size.height;

Wrap流式布局：Flutter中流式布局大概有三种常用的方法，Flow，Wrap。
Wrap更多的形式上
跟Row和Column更像（横、竖、横竖兼备）。
从效率上讲，Flow比Wrap高，但是Wrap灵活

单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Column表现几乎一致。
但Row与Column都是单行单列的，Wrap则突破了这个限制，mainAxis上空间不足时，
则向crossAxis上去扩展显示。



GestureDetector手势操作
*/
class MyWrap extends StatefulWidget {
  MyWrapState createState() => MyWrapState();
}

class MyWrapState extends State<MyWrap> {
  List<Widget> list;

//  初始化一个状态，给list添加值
//  调用自定义方法 buildAddbutton
  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddbutton());
  }

  @override
  Widget build(BuildContext context) {
//  使用meidaQuery可以很容易的得到屏幕的宽和高
    final kScreenWidth = MediaQuery.of(context).size.width;
    final kScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
//      appBar: AppBar(
//        title: Text("Wrap 流式布局"),
//      ),
//      透明控件
      body: Opacity(
//        透明度
        opacity: 0.8,
        child: Container(
          width: kScreenWidth,
          height: kScreenHeight,
//          height: kScreenHeight/2,
          color: Colors.grey,
//          流式布局
          child: Wrap(
            children: list,
//            设置间距
            spacing: 26,
          ),
        ),
      ),
    );
  }

  Widget buildAddbutton() {
//    GestureDetector 手势操作
//    GestureDetector它式一个Widget，但没有任何的显示功能，
//    而只是一个手势操作，用来触发事件的。虽然很多Button组件是有触发事件的，
//    比如点击，但是也有一些组件是没有触发事件的，
//    比如：Padding、Container、Center这时候我们想让它有触发事件
//    就需要再它们的外层增加一个GestureDetector，比如我们让Padding有触发事件
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.amber,
        child: Center(
          child: Text("临江仙"),
        ),
      ),
    );
  }
}

/*
闭合展开案例
手机屏幕本身就小，合理利用空间，把主要元素展现出来，
ExpansionTile组件的使用

ExpansionTile Widget就是一个可以展开闭合的组件，常用的属性：
1.title 闭合时显示的标题，这个部分经常用Text Widget。
2.leading 标题左侧图标，多是用来修饰
3.backgroundcolor 展开时的背景颜色，有过度动画
4.children 子元素 是一个数组 可以放入多个元素
5.trailing 右侧的箭头，你可以自行替换
6.initiallyExpanded 初始状态是否展开，true展开 false不展开
*/
class MyExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          title: Text("展开闭合案例"),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text("list title"),
              subtitle: Text("subtitle"),
            )
          ],
        ),
      ),
    );
  }
}



/*
展开闭合列表案例
ExpansionPanelList 常用属性：
expansionCallback:点击和交互的回调事件，两个参数，一个是出发动作的索引，
另一个是布尔类型的触发值
*/
//自定义扩展状态类
class MyExpandStateBoolean {
  var isOpen;
  var index;
  MyExpandStateBoolean(this.index, this.isOpen);
}

class MyExpansionPanelist extends StatefulWidget{
  MyExpansionPanelistState createState()=>MyExpansionPanelistState();
}

class MyExpansionPanelistState extends State<MyExpansionPanelist>{

  var currentPanelIndex = -1;
  List<int> mList;//组成一个int类型的数组，用来控制索引
  List<MyExpandStateBoolean> expandStateList;//点开展开的状态列表
  //构造方法 调用这个类的时候自动执行
  MyExpansionPanelistState(){
    mList = new List();
    expandStateList = new List();
    //遍历为两个list赋值
    for(int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(MyExpandStateBoolean(i, false));
    }
  }

  //修改展开与闭合的内部方法
  _setCurrentIndex(int index, isExpand){
    setState(() {
      //遍历可展开状态列表
      expandStateList.forEach((item){

        item.isOpen = (item.index == index) ? !isExpand : item.isOpen;

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bool) {
            _setCurrentIndex(index, bool);
          },
          children: mList.map((index){
            return ExpansionPanel(
                headerBuilder: (context, isExpanded){
                  return ListTile(
                    title: Text('This is No.$index'),
                  );
                },
                body: ListTile(
                  title: Text('expansion no.$index'),
                ),

                isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );
  }
}
