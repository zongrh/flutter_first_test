import 'package:flutter/material.dart';
import 'package:flutter_first_test/FlutterBaseControl/FlutterDirectory.dart';
import 'package:flutter_first_test/FlutterBaseControl/MyHorizontailList.dart';
import 'package:flutter_first_test/widget/button.dart';
import 'package:flutter_first_test/widget/dialog.dart';
import 'package:flutter_first_test/widget/scrollview.dart';

import 'FlutterAdvanced/BasselCurve.dart';
import 'FlutterAdvanced/DraggableControl.dart';
import 'FlutterAdvanced/ImageProgress.dart';
import 'FlutterAdvanced/LateralSpreads.dart';
import 'FlutterAdvanced/NormalOperation.dart';
import 'FlutterAdvanced/RouteAnimation.dart';
import 'FlutterAdvanced/SearchOpration.dart';
import 'FlutterAdvanced/ToolTipControl.dart';
import 'FlutterBaseControl/ButtonPage.dart';
import 'FlutterBaseControl/ColumnComponent.dart';
import 'FlutterBaseControl/FlutterNavigation.dart';
import 'FlutterBaseControl/NavigatorDataReturn.dart';
import 'actual/actual_dialog.dart';
import 'actual/amap_location_demo.dart';
import 'actual/card_flip_page.dart';
import 'actual/charts_widget.dart';
import 'actual/city_picker_page.dart';
import 'actual/city_pickers/page/fullpage_pickers_page.dart';
import 'actual/city_pickers/page/ios_city_pickers_page.dart';
import 'actual/device_info_page.dart';
import 'actual/dropdown_menu_sample.dart';
import 'actual/flip_view_custom.dart';
import 'actual/flutter_flip_view_sample.dart';
import 'actual/inner_drawer.dart';
import 'actual/like_button_page.dart';
import 'actual/loading_json.dart';
import 'actual/palette_generator_sample.dart';
import 'actual/parallax_image.dart';
import 'actual/preview_sample.dart';
import 'actual/route_sample.dart';
import 'actual/ruler_sample.dart';
import 'actual/second_floor.dart';
import 'actual/swIper_sample.dart';
import 'actual/time_line.dart';
import 'actual/wave_sample.dart';
import 'actual/widget/clippy_widget.dart';
import 'actual/widget/constact_picker_widget.dart';
import 'actual/widget/flipper_widget.dart';
import 'actual/widget/load_image_widget.dart';
import 'actual/widget/qr_image_widget.dart';
import 'actual/widget/rounded_letter_widget.dart';
import 'actual/widget/staggered_view_page.dart';
import 'actual/widget/start_rating_widget.dart';

void main() => runApp(SelectWidget());
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
  Knowledge('30、侧滑返回案例', MyLateralSpreads()),
  Knowledge('31、ToolTip控件', MyToolTip()),
  Knowledge('32、Draggable控件实例', MyDraggable()),
  Knowledge('33、LearnRadioButton控件实例', LearnRadioButton()),
  Knowledge('34、LearnButton控件实例', LearnButton()),
  Knowledge('35、PopupWindowPage控件实例', PopupWindowPage(title:'PopupWindowPage控件实例')),
  Knowledge('36、DialogPage控件实例', DialogPage()),
  Knowledge('37、MyHomePage控件实例', DialogPage3()),
  Knowledge('38、PositionScreen控件实例', PositionScreen()),
  Knowledge('39、ScrollView控件实例', MyScrollView()),
  Knowledge('40、ScrollNotificationTestRoute控件实例', ScrollNotificationTestRoute()),
  Knowledge('41、ScrollControllerTestRoute控件实例', ScrollControllerTestRoute()),
  Knowledge('42、CustomScrollViewTestRoute控件实例', CustomScrollViewTestRoute()),
  Knowledge('43、TestPage2控件实例', TestPage2()),
  Knowledge('44、TestPage控件实例', TestPage()),
//  实际开发使用控件
  Knowledge('Dialog', DialogWidget()),
  Knowledge('Dialogtest', Dialogtest()),
  Knowledge('贝塞尔曲线 Wave', WavePage()),
  Knowledge('Swiper', SwiperSample()),
  Knowledge('Ruler', RulerSample()),
  Knowledge('LikeButton', LikeButtonPage()),
  Knowledge('时间流', TimeLinePage()),
  Knowledge('选择图片、拍摄、LoadImage', LoadImageWidget()),

  Knowledge('原型头像 RoundedLetter', RoundedLetterWidget()),

  Knowledge('Flipper', FlipperWidget()),
  Knowledge('FlipView Sample', FlutterFlipViewSample()),
  Knowledge('FlipView Custom', FlipViewCustom()),
  Knowledge('读取通讯录ContactPicker', ContactPickerWidget()),
  Knowledge('瀑布流StaggeredView', StaggeredViewPage()),

  Knowledge('评分控件', StarRatingWidget()),
  Knowledge('裁剪Clippy', ClippyWidget()),
  Knowledge('城市选择控件', CityPickerPage()),
  Knowledge('iOS风格城市选择控件', IosCityPickersPage()),
  Knowledge('fullpage风格城市选择控件', FullpageCityPickersPage()),
  Knowledge('设备信息', DeviceInfoPage()),


  Knowledge('二维码', QrImageWidget()),
  Knowledge('图表', ChartsWidget()),
  Knowledge('本地读取json数据', LoadingJsonPage()),
  Knowledge('侧滑菜单', InnerDrawerSample()),
  Knowledge('路由过渡动画', RouteSample()),
  Knowledge('仿美团电影下拉筛选菜单DropDown', DropDownSample()),


  Knowledge('Image Colors', ImageColors()),
  Knowledge('Preview', PreviewSample()),
  Knowledge('CardFlip', CardFlipPage()),
  Knowledge('高德地图定位', AMapLocationDemo()),
  Knowledge('下拉刷新二楼SecondFloor', SecondFloorDemo()),
  Knowledge('视差图片效果', ParallaxImageDemo()),

];

class SelectWidget extends StatelessWidget {
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



