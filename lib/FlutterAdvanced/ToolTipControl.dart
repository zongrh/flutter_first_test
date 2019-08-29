

import 'package:flutter/material.dart';

class  MyToolTip extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
          message: "我只是一个提示",
          child: Icon(Icons.all_inclusive),
        ),
      ),
    );
  }

}

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text('tool tips demo')),
        body:Center(
          child: Tooltip(
            message: '不要碰我，我怕痒',
            child: Icon(Icons.all_inclusive),
          ),
        )
    );
  }
}