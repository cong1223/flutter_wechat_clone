import 'package:flutter/material.dart';
import 'package:flutter_wechat_clone/common/touch_callback.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  
  FocusNode focusNode = new FocusNode();

  _requestFocus() {
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text) {
    return TouchCallBack(
      child: Text(text,style: TextStyle(fontSize: 14,color: Color(0xff1aad19))),
      onPressed: (){},
      isfeed: false,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  TouchCallBack(
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.only(left: 12,right: 10),
                      child: Icon(Icons.chevron_left),
                    ),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    isfeed: false,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 45,
                    margin: EdgeInsets.only(left: 50,right: 10),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1,color: Colors.green)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            focusNode: _requestFocus(),
                            style: TextStyle(color: Colors.black,fontSize: 16),
                            onChanged: (String text){
                              print(text);
                            },
                            decoration: InputDecoration(
                              hintText: '搜索',
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.mic),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  '搜素指定文章',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffb5b5b5)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _getText('小程序'),
                    _getText('公众号'),
                    _getText('朋友圈'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _getText('文章'),
                    _getText('音乐'),
                    _getText('表情'),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
