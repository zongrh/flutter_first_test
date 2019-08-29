import 'package:flutter/material.dart';

/*
RaisedButton按钮组件，它有两个基本属性：
1.child：可以放入容器，图标，文字。构建多彩按钮
2.onPressed：点击事件的响应，一般会调用Navigator组件。

Navigator.push和Navigator.pop
Navigator.push：跳转到下一个页面，他要接受两个参数一个是上下文context，另一个是要跳转的函数。
Navigator.pop：返回到上一个页面，使用时传递一个context。
导航参数的传递和接收:
*/
class NavigationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        child: Text("查看详情按钮"),
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SecondView()));
        },
      ),
    );
  }
}

/*导航控制器跳转的第二个页面*/
class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

//声明一个数据结构类
class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

class Productlist extends StatelessWidget {
  final List<Product> products;

  Productlist({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index].title),
//          点击事件，跳转子页面
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
//                  跳转详情页面
                    builder: (context) => new ProductDeails(
                          product: products[index],
                        )));
          },
        );
      }),
    );
  }
}

class ProductDeails extends StatelessWidget {
  final Product product;

  const ProductDeails({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text('${product.title}')),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}
