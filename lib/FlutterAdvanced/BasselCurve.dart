import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyClipPath extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyBottomCLipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200,
            ),
          )
        ],
      ),
    );
  }


}


class MyBottomCLipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-30);

    var firstControlPoint = Offset(size.width/2, size.height);
    var firstEndPoint = Offset(size.width, size.height-30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height-30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}
/*
波浪式贝塞尔曲线
*/

class MyWaveClipPath extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyWaveCLipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}

class MyWaveCLipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-20);

    var firstControlPoint = Offset(size.width/4, size.height);
    var firstEndPoint = Offset(size.width/2.25, size.height-30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height-40);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}