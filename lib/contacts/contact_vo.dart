import 'package:flutter/material.dart';


class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;

  ContactVO({@required this.seationKey,this.name,this.avatarUrl});
}


List<ContactVO> contactData = [
  new ContactVO(
      seationKey: 'A',
      name: 'A家具销售',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'B',
      name: '波波',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'B',
      name: '背景',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'C',
      name: '餐巾',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'C',
      name: '参谋',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'D',
      name: '大大',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'F',
      name: '放哪',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'G',
      name: '哥哥',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'G',
      name: '港科大',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'G',
      name: '干得好叫',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'Y',
      name: '雅雅',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'F',
      name: '罚金',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'K',
      name: '开车',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'R',
      name: '燃尽',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'R',
      name: '人民',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'T',
      name: '涛涛',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'S',
      name: '神经',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'X',
      name: '小小',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'Y',
      name: '语言',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
  new ContactVO(
      seationKey: 'Z',
      name: '制作',
      avatarUrl: 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1561988384&di=08030687c2d01d6b5d9a0d587f61938e&src=http://pic98.huitu.com/res/20170703/799232_20170703065613213040_1.jpg'
  ),
];