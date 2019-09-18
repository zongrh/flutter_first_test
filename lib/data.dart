
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


List<String> bannerImages = [
  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506230&di=c1fe7acf0d730d3eec5e259b83c5dbb1&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F9358d109b3de9c82036507ac6681800a19d84395.jpg",
  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506230&di=5a7d0ce4bf6bc3ea16631b3b6656705d&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F4e4a20a4462309f76874a128790e0cf3d7cad6f5.jpg',
  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506229&di=d809dd657a9e0df1b5ccdc7aa2b5ed6e&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F0e2442a7d933c89527374758db1373f08202004c.jpg',
  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550062506227&di=4dbf7aff166eedb67f17d9cb445b7b3f&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F8d5494eef01f3a29dda37ce99325bc315c607caa.jpg'
];



class Girl {
  final String description;
  final String image;

  Girl(this.description, this.image);

  static final List<Girl> girls = [
    Girl('Sliding to the left means dislike',
        'https://img.gsdlcn.com/uploads/allimg/190429/1-1Z42Z11017.jpg'),
    Girl('slipping to the right means expressing love',
        'https://img.gsdlcn.com/uploads/190426/1-1Z426220112340.jpg'),
    Girl('Hope you like',
        'https://img.gsdlcn.com/uploads/190423/1-1Z42303163Ma.jpg'),
    Girl('Hope you like',
        'https://img.gsdlcn.com/uploads/190428/1-1Z42P25206293.jpg'),
    Girl('Hope you like',
        'https://img.gsdlcn.com/uploads/190426/1-1Z4261KF4335.jpg'),
    Girl(
        'Hope you like', 'https://www.7160.com/templets/new7160/hotpic/2/s.jpg')
  ];
}





class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;

  const Doodle(
      {this.name,
        this.time,
        this.content,
        this.doodle,
        this.icon,
        this.iconBackground});

  static const List<Doodle> doodles = [
    Doodle(
        name: "Al-Sufi (Azophi)",
        time: "903 - 986",
        content:
        "One of Al-Sufi's greatest works involved fact-checking the Greek astronomer Ptolemy's measurements of the brightness and size of stars. In the year 964 AD, Al-Sufi published his findings in a book titled Kitab al-Kawatib al-Thabita al-Musawwar, or The Book of Fixed Stars. In many cases, he confirmed Ptolemy’s discoveries, but he also improved upon his work by illustrating the constellations and correcting some of Ptolemy’s observations about the brightness of stars.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011582&di=46e3a7501556d6addd41493a2f27dfe5&imgtype=0&src=http%3A%2F%2Fpic.nipic.com%2F2008-06-13%2F2008613104551168_2.jpg",
        icon: Icon(Icons.star, color: Colors.white),
        iconBackground: Colors.cyan),
    Doodle(
        name: "Abu al-Wafa’ al-Buzjani",
        time: "940 - 998",
        content:
        " Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions to negative numbers, and the development of the first quadrant, a tool used by astronomers to examine the sky. His pioneering work in spherical trigonometry was hugely influential for both mathematics and astronomy.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011582&di=aabb186698e018f5a85cfe42b819ca4e&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F8326cffc1e178a8208b90d86fc03738da977e80b.jpg",
        icon: Icon(
          Icons.exposure,
          color: Colors.white,
        ),
        iconBackground: Colors.redAccent),
    Doodle(
        name: "Al-Hasan Ibn al-Haytham",
        time: "c. 965 - c. 1040",
        content:
        "Ibn al-Haytham was the first to explain through experimentation that vision occurs when light bounces on an object and then is directed to one's eyes. He was also an early proponent of the concept that a hypothesis must be proved by experiments based on confirmable procedures or mathematical evidence—hence understanding the scientific method five centuries before Renaissance scientists.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011582&di=caec32456ab2919deb4c7eb0610e50db&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fitem%2F201111%2F05%2F20111105204204_KYTVF.thumb.700_0.jpg",
        icon: Icon(
          Icons.visibility,
          color: Colors.black87,
          size: 32.0,
        ),
        iconBackground: Colors.yellow),
    Doodle(
        name: "Al-Bīrūnī",
        time: "973 - 1050",
        content:
        "Biruni is regarded as one of the greatest scholars of the Golden Age of Muslim civilisation and was well versed in physics, mathematics, astronomy, and natural sciences, and also distinguished himself as a historian, chronologist and linguist. He studied almost all fields of science and was compensated for his research and strenuous work. Royalty and powerful members of society sought out Al-Biruni to conduct research and study to uncover certain findings.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011583&di=c14837284251907e50f57503c9215c91&imgtype=0&src=http%3A%2F%2Fpic31.nipic.com%2F20130630%2F7447430_165944650000_2.jpg",
        icon: Icon(
          Icons.account_balance,
          color: Colors.black87,
        ),
        iconBackground: Colors.amber),
    Doodle(
        name: "Ibn Sina (Avicenna)",
        time: "980 - 1037",
        content:
        "Avicenna (Ibn Sīnā) was a Persian polymath who is regarded as one of the most significant physicians, astronomers, thinkers and writers of the Islamic Golden Age. He has been described as the father of early modern medicine. Of the 450 works he is known to have written, around 240 have survived, including 150 on philosophy and 40 on medicine.\nHis most famous works are The Book of Healing, a philosophical and scientific encyclopedia, and The Canon of Medicine, a medical encyclopedia which became a standard medical text at many medieval universities and remained in use as late as 1650. In 1973, Avicenna's Canon Of Medicine was reprinted in  York.\nBesides philosophy and medicine, Avicenna's corpus includes writings on astronomy, alchemy, geography and geology, psychology, Islamic theology, logic, mathematics, physics and works of poetry.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011584&di=f99d4eb110b637ecb81fb66d2aab0b33&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fd1160924ab18972b83474beeedcd7b899e510a90.jpg",
        icon: Icon(
          Icons.healing,
          color: Colors.white,
        ),
        iconBackground: Colors.green),
    Doodle(
        name: "Ibn Rushd (Averroes)",
        time: "1126 - 1198",
        content:
        "Averroes was an Andalusian philosopher and thinker who wrote about many subjects, including philosophy, theology, medicine, astronomy, physics, Islamic jurisprudence and law, and linguistics. His philosophical works include numerous commentaries on Aristotle, for which he was known in the West as The Commentator. He also served as a judge and a court physician for the Almohad Caliphate.",
        doodle:
        "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3552381637,416449646&fm=26&gp=0.jpg",
        icon: Icon(
          Icons.blur_circular,
          color: Colors.white,
        ),
        iconBackground: Colors.indigo),
    Doodle(
        name: "Nasir al-Din Tusi",
        time: "1201 - 1274",
        content:
        "Tusi was a Persian polymath, architect, philosopher, physician, scientist, and theologian. He is often considered the creator of trigonometry as a mathematical discipline in its own right. Ibn Khaldun (1332–1406) considered Al-Tusi to be the greatest of the later Persian scholars.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011585&di=aaa8dfdfb6309f312016b6e8778f47ad&imgtype=0&src=http%3A%2F%2Fscimg.jb51.net%2Fallimg%2F170109%2F106-1F109120J9646.jpg",
        icon: Icon(
          Icons.category,
          color: Colors.white,
        ),
        iconBackground: Colors.pinkAccent),
    Doodle(
        name: "Ibn Battuta",
        time: "1304 - 1368",
        content:
        "Over a period of thirty years, Ibn Battuta visited most of the Islamic world and many non-Muslim lands, including North Africa, the Horn of Africa, West Africa, the Middle East, Central Asia, Southeast Asia, South Asia and China. Near the end of his life, he dictated an account of his journeys, titled A Gift to Those Who Contemplate the Wonders of Cities and the Marvels of Travelling (Tuḥfat an-Nuẓẓār fī Gharāʾib al-Amṣār wa ʿAjāʾib al-Asfār), usually simply referred to as The Travels (Rihla). This account of his journeys provides a picture of a medieval civilisation that is still widely consulted today.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011585&di=2a33c3141a4dc261e15ea7f8146831a0&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fd62a6059252dd42aec1eb08d093b5bb5c9eab885.jpg",
        icon: Icon(
          Icons.navigation,
          color: Colors.white,
          size: 32.0,
        ),
        iconBackground: Colors.deepPurpleAccent),
    Doodle(
        name: "Ibn Khaldun",
        time: "1332 - 1406",
        content:
        "He is widely considered as a forerunner of the modern disciplines of historiography, sociology, economics, and demography.\nHe is best known for his book, the Muqaddimah or Prolegomena ('Introduction'). The book influenced 17th-century Ottoman historians like Kâtip Çelebi, Ahmed Cevdet Pasha and Mustafa Naima, who used the theories in the book to analyse the growth and decline of the Ottoman Empire. Also, 19th-century European scholars acknowledged the significance of the book and considered Ibn Khaldun to be one of the greatest philosophers of the Middle Ages.",
        doodle:
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554291011586&di=1a9e4879faca48108e0713e791e23179&imgtype=0&src=http%3A%2F%2Fpic5.nipic.com%2F20100104%2F1454779_182623233873_2.jpg",
        icon: Icon(
          Icons.supervised_user_circle,
          color: Colors.white,
        ),
        iconBackground: Colors.teal),
    Doodle(
        name: "Piri Reis",
        time: "1465 - 1553",
        content:
        "He is primarily known today for his maps and charts collected in his Kitab-ı Bahriye (Book of Navigation), a book that contains detailed information on navigation, as well as very accurate charts (for their time) describing the important ports and cities of the Mediterranean Sea. He gained fame as a cartographer when a small part of his first world map (prepared in 1513) was discovered in 1929 at the Topkapı Palace in Istanbul. His world map is the oldest known Turkish atlas showing the  World, and one of the oldest maps of America still in existence anywhere (the oldest known map of America that is still in existence is the map drawn by Juan de la Cosa in 1500). Piri Reis' map is centered on the Sahara at the latitude of the Tropic of Cancer.",
        doodle:
        "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1554280920&di=f596f493385c55a20fe45440e5cb14a6&src=http://pic18.nipic.com/20120205/3145425_101322096000_2.jpg",
        icon: Icon(
          Icons.map,
          color: Colors.white,
          size: 32.0,
        ),
        iconBackground: Colors.blue),
  ];
}


class ChartFlutterBean {
  static List<charts.Series<TimeSeriesSales, DateTime>> createSampleData0() {
    final data = [
      TimeSeriesSales(DateTime(2017, 9, 19), 15),
      TimeSeriesSales(DateTime(2017, 9, 26), 25),
      TimeSeriesSales(DateTime(2017, 10, 9), 20),
      TimeSeriesSales(DateTime(2017, 10, 10), 75),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      ),
    ];
  }

  //饼状图
  static List<charts.Series<LinearSales, int>> createSampleData1() {
    final data = [
      LinearSales(0, 100),
      LinearSales(1, 75),
      LinearSales(2, 25),
      LinearSales(3, 5),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.time,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];

    //点
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSaless, int>> createSampleData3() {
    final data = [
      LinearSaless(10, 7, 10, 25, 20, 25, 5.0),
      LinearSaless(13, 11, 13, 225, 205, 225, 5.0),
      LinearSaless(34, 34, 24, 150, 150, 130, 5.0),
      LinearSaless(37, 37, 57, 10, 10, 12, 6.5),
      LinearSaless(45, 35, 45, 260, 300, 260, 8.0),
      LinearSaless(56, 46, 56, 200, 170, 200, 7.0),
    ];

    final maxMeasure = 300;

    return [
      charts.Series<LinearSaless, int>(
        id: 'Sales',
        // Providing a color function is optional.
        colorFn: (LinearSaless sales, _) {
          // Bucket the measure column value into 3 distinct colors.
          final bucket = sales.sales / maxMeasure;

          if (bucket < 1 / 3) {
            return charts.MaterialPalette.blue.shadeDefault;
          } else if (bucket < 2 / 3) {
            return charts.MaterialPalette.red.shadeDefault;
          } else {
            return charts.MaterialPalette.green.shadeDefault;
          }
        },
        domainFn: (LinearSaless sales, _) => sales.year,
        domainLowerBoundFn: (LinearSaless sales, _) => sales.yearLower,
        domainUpperBoundFn: (LinearSaless sales, _) => sales.yearUpper,
        measureFn: (LinearSaless sales, _) => sales.sales,
        measureLowerBoundFn: (LinearSaless sales, _) => sales.salesLower,
        measureUpperBoundFn: (LinearSaless sales, _) => sales.salesUpper,
        // Providing a radius function is optional.
        radiusPxFn: (LinearSaless sales, _) => sales.radius,
        data: data,
      )
    ];
  }

  //条形图：
  static List<charts.Series<OrdinalSales, String>> createSampleData() {
    final desktopSalesDataA = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    final tableSalesDataA = [
      OrdinalSales('2014', 25),
      OrdinalSales('2015', 50),
      OrdinalSales('2016', 10),
      OrdinalSales('2017', 20),
    ];

    final mobileSalesDataA = [
      OrdinalSales('2014', 10),
      OrdinalSales('2015', 15),
      OrdinalSales('2016', 50),
      OrdinalSales('2017', 45),
    ];

    final desktopSalesDataB = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    final tableSalesDataB = [
      OrdinalSales('2014', 25),
      OrdinalSales('2015', 50),
      OrdinalSales('2016', 10),
      OrdinalSales('2017', 20),
    ];

    final mobileSalesDataB = [
      OrdinalSales('2014', 10),
      OrdinalSales('2015', 15),
      OrdinalSales('2016', 50),
      OrdinalSales('2017', 45),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Desktop A',
        seriesCategory: 'A',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesDataA,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Tablet A',
        seriesCategory: 'A',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesDataA,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Mobile A',
        seriesCategory: 'A',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesDataA,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Desktop B',
        seriesCategory: 'B',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesDataB,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Tablet B',
        seriesCategory: 'B',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesDataB,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Mobile B',
        seriesCategory: 'B',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesDataB,
      ),
    ];
  }

  List<charts.Series<OrdinalSales, String>> getData() {
    final desktopSalesData = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    final tabletSalesData = [
      OrdinalSales('2014', 25),
      OrdinalSales('2015', 50),
      OrdinalSales('2016', 10),
      OrdinalSales('2017', 20),
    ];

    final mobileSalesData = [
      OrdinalSales('2014', 10),
      OrdinalSales('2015', 15),
      OrdinalSales('2016', 50),
      OrdinalSales('2017', 45),
    ];

    final otherSalesData = [
      OrdinalSales('2014', 20),
      OrdinalSales('2015', 35),
      OrdinalSales('2016', 15),
      OrdinalSales('2017', 10),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tabletSalesData,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesData,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Other',
        insideLabelStyleAccessorFn: (T, int) {
          return charts.TextStyleSpec(color: charts.Color.transparent);
        },
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: otherSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}




class LinearSales {
  final int time;
  final int sales;

  LinearSales(this.time, this.sales);
}

/// Sample linear data type.
class LinearSaless {
  final int year;
  final int yearLower;
  final int yearUpper;
  final int sales;
  final int salesLower;
  final int salesUpper;
  final double radius;

  LinearSaless(this.year, this.yearLower, this.yearUpper, this.sales,
      this.salesLower, this.salesUpper, this.radius);
}


class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}




