import 'package:flutter/material.dart';
import 'package:flutter_wechat_clone/common/touch_callback.dart';
import './message_data.dart';
import 'package:date_format/date_format.dart';


class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);


  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1,color: Color(0xffd9d9d9))),
      ),
      height: 64,
      child: TouchCallBack(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 13,right: 13),
              child: Image.network(message.avatar,width: 48,height: 48,fit: BoxFit.cover,),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message.title,
                      style: TextStyle(fontSize: 16,color: Color(0xff353535)),
                      maxLines: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                    ),
                    Text(
                      message.subTitle,
                      style: TextStyle(fontSize: 14,color: Color(0xffa9a9a9)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(right: 12,top: 12),
              child: Text(
                formatDate(message.time, [HH,':',nn,':','ss']).toString(),
                style: TextStyle(fontSize: 14,color: Color(0xffa9a9a9)),
              ),
            )
          ],
        ),
      ),
    );
  }
}