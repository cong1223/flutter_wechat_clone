import 'package:flutter/material.dart';
import '../common/wechat_item.dart';

class Found extends StatefulWidget {
  @override
  _FoundState createState() => _FoundState();
}

class _FoundState extends State<Found> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              color: Colors.white,
              child: WechatItem(
                title: '朋友圈',
                imagePath: 'images/friend.png',
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    WechatItem(
                      title: '扫一扫',
                      imagePath: 'images/saoyisao.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 0.5,
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    WechatItem(
                      title: '摇一摇',
                      imagePath: 'images/yaoyiyao.png',
                    ),
                  ],
                )
            ),

            Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    WechatItem(
                      title: '看一看',
                      imagePath: 'images/kanyikan.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 0.5,
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    WechatItem(
                      title: '搜一搜',
                      imagePath: 'images/souyisou.png',
                    ),
                  ],
                )
            ),

            Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    WechatItem(
                      title: '附近的人',
                      imagePath: 'images/fujin.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 0.5,
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    WechatItem(
                      title: '漂流瓶',
                      imagePath: 'images/piaoliupin.png',
                    ),
                  ],
                )
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    WechatItem(
                      title: '购物',
                      imagePath: 'images/gouwu.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Divider(
                        height: 0.5,
                        color: Color(0xffd9d9d9),
                      ),
                    ),
                    WechatItem(
                      title: '游戏',
                      imagePath: 'images/youxi.png',
                    ),
                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20),
              color: Colors.white,
              child: WechatItem(
                title: '小程序',
                imagePath: 'images/xiaochengxu.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
