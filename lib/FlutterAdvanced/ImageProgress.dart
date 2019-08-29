import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as prefix0;

/*
毛玻璃处理效果:毛玻璃的效果对系统的消耗比较大
BackdropFilter就是背景滤镜组件，使用它可以给父元素增加滤镜效果，
它里面的最重要的一个属性是filter。filter属性中要添加一个滤镜组件
*/
class FrostedGlass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //约束盒子组件，添加额外的限制条件大child上
          ConstrainedBox(
//            限制条件可扩展
            constraints: const BoxConstraints.expand(),
            child: Image(
              image: new AssetImage("images/test1.jpg"),
            ),
          ),
          Center(
            child: ClipRect(
              //裁剪长方形
              child: BackdropFilter(
                //背景滤镜器
                //图片模糊过滤，横向竖向都设置5.0
                filter: prefix0.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Opacity(
                  //透明控件
                  opacity: 0.2,
                  child: Container(
                    width: 500,
                    height: 700,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        "临江仙",
                        style: Theme.of(context).textTheme.display3, //设置比较酷炫的字体
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
