import 'package:Giglink.uz/About/About.dart';
import 'package:Giglink.uz/Developer/dev.dart';
import 'package:Giglink.uz/page/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 25.0)),
          Container(
            width: double.infinity,
            height: 40,
            color: Color(0xFF6985e8),
            child: Center(
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.home,
              color: Colors.black,
              size: 20,
            ),
            title: Text('Bosh sahifa',
                style: TextStyle(fontWeight: FontWeight.w900)),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.exclamation,
              size: 20,
              color: Colors.black,

            ),
            title: Text(
              'Loyiha haqida',
                style: TextStyle(fontWeight: FontWeight.w900)
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.code,
              color: Colors.black,
              size: 20,
            ),
            title: Text('Dasturchi',
                style: TextStyle(fontWeight: FontWeight.w900)
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dev()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.telegram,
              size: 20,
              color: Colors.black,
            ),
            onTap: () async {
              await launch(
                "https://t.me/giglinkuz",
                forceSafariVC: false,
                forceWebView: false,
                headers: <String, String>{'my_header_key': 'my_header_value'},
              );
            },
            title: Text('Telegram',
                style: TextStyle(fontWeight: FontWeight.w900)
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.instagram,
              size: 20,
              color: Colors.black,
            ),
            onTap: () async {
              await launch(
                "https://www.instagram.com/giglinkuz/",
                forceSafariVC: false,
                forceWebView: false,
                headers: <String, String>{'my_header_key': 'my_header_value'},
              );
            },
            title: Text('Instagram',
                style: TextStyle(fontWeight: FontWeight.w900)
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.facebook,
              size: 20,
              color: Colors.black,
            ),
            onTap: () async {
              await launch(
                "https://www.facebook.com/giglinkuz",
                forceSafariVC: false,
                forceWebView: false,
                headers: <String, String>{'my_header_key': 'my_header_value'},
              );
            },
            title: Text('Facebook',
                style: TextStyle(fontWeight: FontWeight.w900)
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.twitter,
              size: 20,
              color: Colors.black,
            ),
            onTap: () async {
              await launch(
                "https://twitter.com/giglinkuz",
                forceSafariVC: false,
                forceWebView: false,
                headers: <String, String>{'my_header_key': 'my_header_value'},
              );
            },
            title: Text('Twitter',
                style: TextStyle(fontWeight: FontWeight.w900)
            ),
          ),

        ],
      ),
    );
  }
}
