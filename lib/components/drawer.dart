import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagesapp/pages/compose_post.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 250,
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffFD8A02)),
              child: Text('Pages', style: TextStyle(color: Colors.white))),
          ListTile(
              leading:
                  SvgPicture.asset('assets/svg/mobile-alt-1-svgrepo-com.svg'),
              title: Text('My Moodboard'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ComposePost();
                }));
              }),
          ListTile(
              leading:
                  SvgPicture.asset('assets/svg/user-alt-1-svgrepo-com.svg'),
              title: Text('My Details'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return ComposePost();
                }));
              })
        ]));
  }
}
