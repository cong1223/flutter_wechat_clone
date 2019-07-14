import 'package:flutter/material.dart';
import '../common/touch_callback.dart';
import 'package:flutter_wechat_clone/common/wechat_item.dart';


class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: TouchCallBack(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 12,right:15),
                      child: Image.asset(
                          'images/avatar.jpg',
                          width: 70.0,
                        height: 70.0,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '社会人',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff353535)
                            ),
                          ),
                          Text(
                            '微信号 YXC19970131',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffa9a9a9)
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12,right:15),
                      child: Image.asset(
                        'images/code.png',
                        width: 24.0,
                        height: 24.0,
                      ),
                    ),
                  ],
                ),
                onPressed: (){}
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: WechatItem(title: '钱包',imagePath: 'images/wallet.png',),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(title: '收藏',imagePath: 'images/collect.png',),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WechatItem(title: '相册',imagePath: 'images/album.png',),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WechatItem(title: '卡包',imagePath: 'images/card.png',),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WechatItem(title: '表情',imagePath: 'images/expression.png',),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            color: Colors.white,
            child: WechatItem(title: '设置',imagePath: 'images/setting.png',),
          ),
        ],
      ),
    );
  }
}