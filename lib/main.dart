import 'package:flutter/material.dart';
import 'package:flutter_first_test/FlutterBaseControl/FlutterDirectory.dart';
import 'package:flutter_first_test/FlutterBaseControl/MyHorizontailList.dart';

import 'FlutterAdvanced/BasselCurve.dart';
import 'FlutterAdvanced/DraggableControl.dart';
import 'FlutterAdvanced/ImageProgress.dart';
import 'FlutterAdvanced/LateralSpreads.dart';
import 'FlutterAdvanced/NormalOperation.dart';
import 'FlutterAdvanced/RouteAnimation.dart';
import 'FlutterAdvanced/SearchOpration.dart';
import 'FlutterAdvanced/ToolTipControl.dart';
import 'FlutterBaseControl/ColumnComponent.dart';
import 'FlutterBaseControl/FlutterNavigation.dart';
import 'FlutterBaseControl/NavigatorDataReturn.dart';

void main() => runApp(MyApp());
var titlelist=[
  Knowledge('1、Text Widget 文本组件的使用', TextWidget()),
  Knowledge('2、Container容器组件的基本使用', ContainerBase()),
  Knowledge('3、图片组件(网图)', LoadNetImageView()) ,
  Knowledge('4、本地图片加载', LoadAssetImageView()),
  Knowledge('5、横纵向列表', MyHorizontailList()),
  Knowledge('6、纵向列表', MyVerticalList()),
  Knowledge('7、文字网格列表', TextGridleView()),
  Knowledge('8、图片网格列表', IconGridleView()),
  Knowledge('9、水平布局Row(非灵活布局)', UnFlexibleRow()),
  Knowledge('10、水平布局Row(灵活布局)', FlexibleRow()),
  Knowledge('11、水平布局Row(灵活和非灵活的水平布局混用)', MixFlexibleRow()),
  Knowledge('12、垂直布局Column_Text', ColumnLayoutText()),
  Knowledge('13、垂直布局Column', ColumnLayout()),
  Knowledge('14、Stack层叠布局', MyStack()),
  Knowledge('15、Stack层叠布局进阶',  MoreStack()),
  Knowledge('16、卡片式布局', NewCardLayout()),
  Knowledge('17、导航控制器', NavigationBody()),
  Knowledge('18、页面传值', Productlist(products: List.generate(20, (i)=>Product('商品 $i', '这是一个商品详情，编号为：$i'),),
  )),
  Knowledge('19、页面间传值回调', FirstPage()),
  Knowledge('20、路由动画', StartPage()),
  Knowledge('21、毛玻璃效果', FrostedGlass()),
  Knowledge('22、保持页面状态', KeepPageAlive()),
  Knowledge('23、保持页面状态', KeepButtonAlive()),
  Knowledge('24、搜索功能', SearchBar()),
  Knowledge('25、流布局', MyWrap()),
  Knowledge('26、展开闭合案例', MyExpansionTile()),
  Knowledge('27、展开闭合列表案例', MyExpansionPanelist()),
  Knowledge('28、贝塞尔曲线切割', MyClipPath()),
  Knowledge('29、波浪形式的贝塞尔曲线', MyWaveClipPath()),
  Knowledge('30、侧滑返回案例', YQLateralSpreads()),
  Knowledge('31、ToolTip控件', MyToolTip()),
  Knowledge('32、Draggable控件实例', YQDraggable()),


];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:FlutterDirectory(
        Knowledges: titlelist,
      )
    );
  }
}

