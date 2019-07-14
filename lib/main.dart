import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wechat_clone/search.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'wechat',
    theme: ThemeData(
      primaryColor: Color(0xff303030),
      scaffoldBackgroundColor: Color(0xffebebeb),
      cardColor: Color(0xff393a3f)
    ),
    routes: <String,WidgetBuilder> {
      "app": (BuildContext context) => new App(),
      "/friends": (_) => new WebviewScaffold(
          url: "https://weixin.qq.com/",
        appBar: AppBar(
          title: Text('微信朋友圈'),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
      'search': (BuildContext context) => new Search(),
    },
    home: LoadingPage(),
  )
);
