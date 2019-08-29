import 'package:flutter/material.dart';

class Knowledge {
  final String title; //标题
  final Object body; //需要跳转的页面
  Knowledge(this.title, this.body);
}

class FlutterDirectory extends StatelessWidget {
  final List<Knowledge> Knowledges;

  FlutterDirectory({Key key, @required this.Knowledges}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter学习目录"),
      ),
//      body: ListView.builder(
//          itemCount: Knowledges.length,
//          itemBuilder: (context, index) {
//            return ListTile(
//              title: Text(Knowledges[index].title),
//              onTap: () {
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => LearnContent(
//                              knowledge: Knowledges[index],
//                            )));
//              },
//            );
//          }),
//      ========================================================================================

      body: new ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(Knowledges[index].title,style: TextStyle(
                fontSize: 16

              ),),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LearnContent(
                              knowledge: Knowledges[index],
                            )));
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return new Container(
              height: 0.5,
              color: Colors.blue,
              padding:const EdgeInsets.fromLTRB(10,0,20,0),
//              padding:const EdgeInsets.all(10),
            );
          },
          itemCount: Knowledges.length),
    );
  }
}

class LearnContent extends StatelessWidget {
  final Knowledge knowledge;

  LearnContent({Key key, @required this.knowledge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text('${knowledge.title}')),
      body: knowledge.body,
    );
  }
}

/*
==================================  1
Text Widget 文本组件的使用:

TextAlign属性就是文本的对齐方式，它的属性值有如下几个:
center: 文本以居中形式对齐,这个也算比较常用的了。
left:左对齐，让文本居左进行对齐，效果和start一样。
right :右对齐。
start:以开始位置进行对齐，类似于左对齐。
end: 以为本结尾处进行对齐。有点类似右对齐.

maxLines属性:设置显示文本的最大行数
overflow属性：是用来设置文本溢出时的处理方式，主要分为：
1.clip：直接切断，剩下的文字就没有了
2.ellipsis:在后边显示省略号
3.fade: 溢出的部分会进行一个渐变消失的效果，当然是上线的渐变。

*/
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: new Text(
        '你好 flutter',
        style: TextStyle(
            fontSize: 40,
//            color: Colors.lightGreen
            color: Color.fromARGB(255, 255, 150, 150),
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }
}

/*
==================================  2
Container容器组件的使用1
Container相当于HTML里的<div>标签

Alignment属性：该属性是针对Container内child的对齐方式，也就是容器字内容的对齐方式，
并不是容器本身的对齐方式。具体对齐方式可查看文档
此外还可以设置颜色宽高等属性
*/
class ContainerBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Container(
        child: new Text(
          'Hello JSPang',
          style: TextStyle(fontSize: 40.0),
        ),
        alignment: Alignment.topLeft,
        width: 500.0,
        height: 400.0,
//        color: Colors.red,
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
        margin: const EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            gradient: const LinearGradient(colors: [Colors.lightBlue, Colors.purple])),
      ),
    );
  }
}

/*
==================================  3

图片组件的使用(网络图片)

加载图片的几种方式：
1.Image.asset:加载资源图片，就是加载项目资源目录中的图片,
加入图片后会增大打包的包体体积，用的是相对路径。
2.Image.network:网络资源图片，
意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
3.Image.file:加载本地图片，
就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
4.Image.memory: 加载Uint8List资源图片。

fit属性用来控制图片的压缩和挤压:
1.BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
2.BoxFit.contain:全图显示，显示原比例。
3.BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
4.BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切
5.BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
6.BoxFit.scaleDown：效果和contain差不多，
但是此属性不允许显示超过源图片大小，可小不可大。

图片的混合模式：colorBlendMode和color属性的结合使用，可以搭配出很多效果

repeat图片重复:
1.ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
2.ImageRepeat.repeatX: 横向重复，纵向不重复。
3.ImageRepeat.repeatY：纵向重复，横向不重复。

*/
class LoadNetImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Container(
        child: new Image.network(
          'http://pic1.win4000.com/wallpaper/c/53cdd1f7c1f21.jpg',
          scale: 2,
          color: Colors.lightBlue,
          colorBlendMode: BlendMode.darken,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

/*加载本地图片*/
class LoadAssetImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: new Image(image: new AssetImage('images/test1.jpg')),
      width: 400,
      height: 500,
    );
  }
}
