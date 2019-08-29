import 'package:flutter/material.dart';

const searchList = ["jiejie-大长腿", "jiejie-水蛇腰", "gege1-帅气欧巴", "gege2-小鲜肉"];
const recentSuggest = ["推荐-1", "推荐-2"];

//搜索功能实现
class SearchBar extends StatefulWidget {
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索功能'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: searchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}

class searchBarDelegate extends SearchDelegate<String> {
//  buildActions方法时搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。 当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

//  这个时搜索栏左侧的图标和功能的编写，这里我们才用AnimatedIcon，
//  然后在点击时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

//  buildResults方法，是搜到到内容后的展现，因为我们的数据都是模拟的，
//  所以我这里就使用最简单的Container+Card组件进行演示了，不做过多的花式修饰了。
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container(
      width: 100,
      height: 100,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

//  这个方法主要的作用就是设置推荐，就是我们输入一个字，
//  然后自动为我们推送相关的搜索结果
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
        ));
  }
}
