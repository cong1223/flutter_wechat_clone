class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;
  
  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
  
}


enum MessageType {
  SYSTEM,
  PUBLIC,
  CHAT,
  GROUP
}


List<MessageData> messageData = [
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '大耳朵图图',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '一休哥',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '钢铁侠',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '虹猫',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '蓝兔',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '忍者神龟',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '哆啦A梦',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '哆啦A梦',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '哆啦A梦',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '哆啦A梦',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData('https://img2.woyaogexing.com/2019/06/27/889446d6fb454ccea50553bcdd680920!400x400.jpeg',
      '哆啦A梦',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
];
