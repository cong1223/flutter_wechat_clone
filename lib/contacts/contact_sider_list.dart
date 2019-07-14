import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_vo.dart';

class ContactSiderList extends StatefulWidget {
  final List<ContactVO> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList(
      {Key key,
      @required this.items,
      this.headerBuilder,
      @required this.itemBuilder,
      @required this.sectionBuilder})
      : super(key: key);

  @override
  _ContactSiderListState createState() => _ContactSiderListState();
}

const sliderBarKey = <String>[
  '↑',
  '☆',
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'K',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];

class _ContactSiderListState extends State<ContactSiderList> implements SectionIndexer {
  Color _pressColor = Colors.transparent; //slider背景颜色

  final ScrollController _scrollController = new ScrollController();

//  滑动监听
  bool _onNotification(ScrollNotification notification) {
    //下滑到最底部
    if (notification.metrics.extentAfter == 0.0) {
      print('======下滑到最底部======');
//      loadData();
    }
    //滑动到最顶部
    if (notification.metrics.extentBefore == 0.0) {
      print('======滑动到最顶部======');
//      loadData();
    }
    return true;
  }

  @override
  listScrollToPosition(int index) {
    //重要方法：根据滑动的字母返回listview中的位置
    for (var i = 0; i < widget.items.length; i++) {
      if (sliderBarKey[index] == '☆' || sliderBarKey[index] == '↑') {
        _scrollController.jumpTo(0);
        setState(() {});
        return -1;
      } else if (widget.items[i].seationKey == sliderBarKey[index]) {
        return i;
      }
    }
    return -1;
  }

  bool _shouldShowHeader(int position) {
    if (position < 0) {
      return false;
    }
    if (position == 0) {
      return false;
    }
    if (position != 0 &&
        widget.items[position].seationKey !=
            widget.items[position - 1].seationKey) {
      return false;
    }
    return true;
  }

  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //通用功能，列表加载更多处理,notification包裹
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              //list里面的内容不足一屏时，list都可以滑动
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      _isShowHeaderView(index),
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context, index),
                      ),
                      Column(
                        children: <Widget>[widget.itemBuilder(context, index)],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          //排序字母
          Positioned(
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: 32,
              color: _pressColor,
              child: GestureDetector(
                onTapDown: (TapDownDetails t) {
                  //手指按下
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                onTapUp: (TapUpDetails t) {
                  //手指弹起
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                onVerticalDragStart: (DragStartDetails details) {
                  //开始垂直滑动
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                onVerticalDragEnd: (DragEndDetails details) {
                  //结束垂直滑动
                  setState(() {
                    _pressColor = Colors.transparent;
                  });
                },
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  //手指垂直滑动时
                  setState(() {
                    _pressColor = Colors.grey;
                  });
                },
                child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: sliderBarKey.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      height: 17,
                      child: Text(sliderBarKey[index]),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

abstract class SectionIndexer {
  listScrollToPosition(int index);
}
