// ignore: must_be_immutable
import 'dart:async';

import 'package:custom_widgets/dialog/asset_giffy_dialog.dart';
import 'package:custom_widgets/dialog/network_giffy_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_test/res/styles.dart';
import 'package:package_info/package_info.dart';

class DialogPage extends StatefulWidget {
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return MessageDialog(
                  title: '图形验证码',
                  message: '内容',
                  negativeText: '按钮1',
                  positiveText: '按钮2',
                  onCloseEvent: () {
                    print('关闭对话框');
                    Navigator.pop(context); //关闭对话框
                  },
                  onPositivePressEvent: () {
                    print(
                        'onPositivePressEventonPositivePressEventonPositivePressEvent');
                  },
                );
              });
        },
        child: Text('显示Dialog'),
      )),
    );
  }
}

class MessageDialog extends Dialog {
  String title;
  String message;
  String negativeText;
  String positiveText;
  Function onCloseEvent;
  Function onPositivePressEvent;

  MessageDialog({
    Key key,
    @required this.title,
    @required this.message,
    this.negativeText,
    this.positiveText,
    this.onPositivePressEvent,
    @required this.onCloseEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(25.0),
      child: new Material(
        type: MaterialType.transparency,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: ShapeDecoration(
                color: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              margin: const EdgeInsets.all(12.0),
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Text(
                            title,
                            style: new TextStyle(
                              fontSize: 16.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        new Expanded(child: Container()),
                        new GestureDetector(
//                          onTap: this.onCloseEvent,
                          onTap: this.onCloseEvent,
                          child: new Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: new Icon(
                              Icons.close,
                              color: Color(0xff666666),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    constraints: BoxConstraints(minHeight: 180.0),
                    padding: const EdgeInsets.all(25.0),
                    child: new Column(
                      children: <Widget>[
                        TextField(
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    color: Color(0xffe0e0e0),
                    height: 1.0,
                  ),
                  this._buildBottomButtonGroup(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButtonGroup() {
    var widgets = <Widget>[];
    if (negativeText != null && negativeText.isNotEmpty)
      widgets.add(_buildBottomCancelButton());
    if (positiveText != null && positiveText.isNotEmpty)
      widgets.add(_buildBottomPositiveButton());
    return new Flex(
      direction: Axis.horizontal,
      children: widgets,
    );
  }

  Widget _buildBottomCancelButton() {
    return new Flexible(
      fit: FlexFit.tight,
      child: new FlatButton(
        onPressed: onCloseEvent,
        child: new Text(
          negativeText,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Widget _buildBottomPositiveButton() {
    return new Flexible(
      fit: FlexFit.tight,
      child: new FlatButton(
        onPressed: onPositivePressEvent,
        child: new Text(
          positiveText,
          style: TextStyle(
            color: Color(Colors.teal.value),
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class DialogPage2 extends StatefulWidget {
  _DialogPageState2 createState() => _DialogPageState2();
}

class _DialogPageState2 extends State<DialogPage2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('点击'),
          color: Colors.red,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => DialogPage3()));

          },
        ),
      ),
    );
  }
}

class DialogPage3 extends StatefulWidget {

  @override
  _DialogPage3State createState() => _DialogPage3State();
}

class _DialogPage3State extends State<DialogPage3> {
  List<String> cuntries = <String>[
    '北京',
    '上海',
    '成都',
    '西安',
    '太原',
    '云南',
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog();
    });
  }

  _showDialog() async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new CupertinoAlertDialog(
            title: new Text('请选择'),
            actions: <Widget>[
              new CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.of(context).pop('取消');
                  },
                  child: new Text('取消')),
              new CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.of(context).pop('确定');
                  },
                  child: new Text('确定')),
            ],
            content: new SingleChildScrollView(
              child: new Material(
                child: new MyDialogContent(
                  cuntries: cuntries,
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

class MyDialogContent extends StatefulWidget {
  final List<String> cuntries;

  MyDialogContent({Key key, this.cuntries}) : super(key: key);

  @override
  _MyDialogContentState createState() => _MyDialogContentState();
}

class _MyDialogContentState extends State<MyDialogContent> {
  int _selectedIndex = 0;

  _getContent() {
    if (widget.cuntries.length == 0) {
      return new Container();
    }
    return new Column(
      children: new List<RadioListTile<int>>.generate(widget.cuntries.length,
          (int index) {
        return new RadioListTile(
            value: index,
            groupValue: _selectedIndex,
            title: new Text(widget.cuntries[index]),
            onChanged: (int value) {
              setState(() {
                _selectedIndex = value;
              });
            });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getContent();
  }
}


