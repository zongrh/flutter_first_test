import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YQDraggable extends StatefulWidget {
  _MyDraggableState createState() => _MyDraggableState();
}

class _MyDraggableState extends State<YQDraggable> {
  Color draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          YQDraggableWidget(
            offset: Offset(180.0, 180.0),
            widgetColor: Colors.tealAccent,
          ),
          YQDraggableWidget(
            offset: Offset(180.0, 180.0),
            widgetColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: draggableColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


class YQDraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;
  const YQDraggableWidget({Key key, this.offset, this.widgetColor})
      : super(key: key);
  YQDraggableWidgetState createState() => YQDraggableWidgetState();
}

class YQDraggableWidgetState extends State<YQDraggableWidget> {
  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.widgetColor,
        child: Container(
          width: 100,
          height: 100,
          color: widget.widgetColor,
        ),
        feedback: Container(
          width: 100,
          height: 100,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}