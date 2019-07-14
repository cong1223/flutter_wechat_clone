import 'package:flutter/material.dart';
import 'personal/personal.dart';
import 'chat/message_page.dart';
import 'contacts/contacts.dart';
import 'found/found.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  int _currentIndex = 0;

  MessagePage message;
  Contacts contacts;
  Found found;
  Personal me;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        if(message == null) {
          message = new MessagePage();
        }
        return message;
      case 1:
        if(contacts == null) {
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if(found == null) {
          found = new Found();
        }
        return found;
      case 3:
        if(me == null) {
          me = new Personal();
        }
        return me;
    }
  }

  _popupMenuItem(String title,{String imagePath,IconData icon}) {
    return PopupMenuItem(
      child: Center(
        child: Row(
          children: <Widget>[
            imagePath != null
                ? Image.asset(imagePath,width: 32,height: 32,)
                : SizedBox(width: 32,height: 32,child: Icon(icon,color: Colors.white)),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(title,style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          GestureDetector(
            child: Icon(Icons.search),
            onTap: () {
              Navigator.pushNamed(context, 'search');
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 30,right: 20),
            child: GestureDetector(
              child: Icon(Icons.add),
              onTap: (){
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500, 76, 10, 0),
                    items:<PopupMenuEntry>[
                      _popupMenuItem('发起群聊',imagePath: 'images/menu_group.png'),
                      _popupMenuItem('添加好友',imagePath: 'images/menu_add.png'),
                      _popupMenuItem('扫一扫',imagePath: 'images/menu_scan.png'),
                      _popupMenuItem('收付款',imagePath: 'images/menu_payment.png'),
                      _popupMenuItem('帮助与反馈',imagePath: 'images/menu_help.png')
                    ]
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: ((index){
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            title: Text(
              '消息',
              style: TextStyle(
                  color: _currentIndex == 0 ? Color(0xff46c01b) : Color(0xff999999)
              ),
            ),
            icon: _currentIndex == 0 ? Image.asset("images/message_pressed.png",width: 32,height: 28,) : Image.asset("images/message.png",width: 32,height: 28,),
          ),
          BottomNavigationBarItem(
            title: Text(
              '联系人',
              style: TextStyle(
                  color: _currentIndex == 1 ? Color(0xff46c01b) : Color(0xff999999)
              ),
            ),
            icon: _currentIndex == 1 ? Image.asset("images/contacts_pressed.png",width: 32,height: 28,) : Image.asset("images/contacts.png",width: 32,height: 28,),
          ),
          BottomNavigationBarItem(
            title: Text(
              '发现',
              style: TextStyle(
                  color: _currentIndex == 2 ? Color(0xff46c01b) : Color(0xff999999)
              ),
            ),
            icon: _currentIndex == 2 ? Image.asset("images/find_pressed.png",width: 32,height: 28,) : Image.asset("images/find.png",width: 32,height: 28,),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的',
              style: TextStyle(
                  color: _currentIndex == 3 ? Color(0xff46c01b) : Color(0xff999999)
              ),
            ),
            icon: _currentIndex == 3 ? Image.asset("images/mine_pressed.png",width: 32,height: 28,) : Image.asset("images/mine.png",width: 32,height: 28,),
          )
        ],
      ),
      body: currentPage(),
    );
  }
}
