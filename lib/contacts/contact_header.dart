import 'package:flutter/material.dart';
import 'contact_item.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ContactItem(
          titleName: '新的朋友',
          imageName: 'images/add-friends.png'
        ),
        ContactItem(
            titleName: '公众号',
            imageName: 'images/public.png'
        ),
        ContactItem(
            titleName: '标签',
            imageName: 'images/label.png'
        ),
        ContactItem(
            titleName: '群聊',
            imageName: 'images/group-chat.png'
        ),
      ],
    );
  }
}