import 'package:flutter/material.dart';

class LearnRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnRadioButton();
  }
}

class _LearnRadioButton extends State<LearnRadioButton> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Radio(value: 0, groupValue: 0, onChanged: null),
          //onChanged为null表示按钮不可用
          new Radio(
              value: 1,
              groupValue: groupValue, //当value和groupValue一致的时候则选中
              activeColor: Colors.red,
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new Radio(
              value: 2,
              groupValue: groupValue,
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new Radio(
              value: 3,
              groupValue: groupValue,
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new Radio(
              value: 4,
              groupValue: groupValue,
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new Radio(
              value: 5,
              groupValue: groupValue,
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new Radio(
              value: 6,
              groupValue: groupValue,
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 7,
              groupValue: groupValue,
              title: new Text('小张'),
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 8,
              groupValue: groupValue,
              title: new Text('小林'),
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 9,
              groupValue: groupValue,
              title: new Text('小王'),
              onChanged: (T) {
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 10,
              groupValue: groupValue,
              title: new Text('小红'),
              onChanged: (T) {
                updateGroupValue(T);
              })
        ],
      ),
    );
  }

  void updateGroupValue(int v) {
    setState(() {
      groupValue = v;
    });
  }
}

class LearnButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnButton();
  }
}

class _LearnButton extends State<LearnButton> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Center(
            child: new RaisedButton(
              onPressed: () {
                print(
                    '点击3333333333333333333333333333333333333333333333333333333333333333333333333333333');
              },
              color: Colors.black,
              //按钮的背景颜色
              padding: EdgeInsets.all(50.0),
              //按钮距离里面内容的内边距
              child: new Text('B'),
              textColor: Colors.white,
              //文字的颜色
              textTheme: ButtonTextTheme.normal,
              //按钮的主题
              onHighlightChanged: (bool b) {
                //水波纹高亮变化回调
              },
              disabledTextColor: Colors.black54,
              //按钮禁用时候文字的颜色
              disabledColor: Colors.black54,
              //按钮被禁用的时候显示的颜色
              highlightColor: Colors.yellowAccent,
              //点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
              splashColor: Colors.white,
              //水波纹的颜色
              colorBrightness: Brightness.light,
              //按钮主题高亮
              elevation: 10.0,
              //按钮下面的阴影
              highlightElevation: 10.0,
              //高亮时候的阴影
              disabledElevation: 10.0, //按下的时候的阴影
//              shape:,//设置形状  LearnMaterial中有详解
            ),
          ),

          new Center(
            child: new RaisedButton(
              onPressed: () {
                print(
                    '点击3333333333333333333333333333333333333333333333333333333333333333333333333333333');
              },
              color: Colors.black,
              //按钮的背景颜色
              padding: EdgeInsets.all(50.0),
              //按钮距离里面内容的内边距
              child: new Text('B'),
              textColor: Colors.white,
              //文字的颜色
              textTheme: ButtonTextTheme.normal,
              //按钮的主题
              onHighlightChanged: (bool b) {
                //水波纹高亮变化回调
              },
              disabledTextColor: Colors.black54,
              //按钮禁用时候文字的颜色
              disabledColor: Colors.black54,
              //按钮被禁用的时候显示的颜色
              highlightColor: Colors.yellowAccent,
              //点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
              splashColor: Colors.white,
              //水波纹的颜色
              colorBrightness: Brightness.light,
              //按钮主题高亮
              elevation: 10.0,
              //按钮下面的阴影
              highlightElevation: 10.0,
              //高亮时候的阴影
              disabledElevation: 10.0, //按下的时候的阴影
//              shape:,//设置形状  LearnMaterial中有详解
            ),
          )
        ],
      ),
    );
  }
}
