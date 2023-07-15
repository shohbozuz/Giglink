import 'package:Giglink.uz/Notificatoins/notifications.dart';
import 'package:Giglink.uz/Route_page/route_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';

import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final WebViewController controller;


  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://giglink.uz'),
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.bell,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifications_icons()),
              );
            },
          ),

        ],
      ),
      drawer: CustomDrawer(),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}

