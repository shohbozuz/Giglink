import 'package:Giglink.uz/Notificatoins/notifications.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class Dev extends StatelessWidget {
  const Dev({Key? key}) : super(key: key);

  void openApp() async {
    final url = 'https://example.com/'; // Enter your app's URL here
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'App not found';
    }
  }

  void shareApp() {
    Share.share('Share the app'); // Enter the sharing message for your app
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dasturchi'),
        actions: [
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dasturchi haqida qisqacha malumot:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Bu yerda dasturchi haqida qisqacha ma\'lumot bo\'lishi mumkin.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                final call = Uri.parse('tel:+998971712402');
                if (await canLaunchUrl(call)) {
                  launchUrl(call);
                } else {
                  throw 'Could not launch $call';
                }
              },
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.phone,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text('+998971712402'),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'shohbozbek.uz24@gmail.com',
                  queryParameters: {
                    'subject': 'Subject of the email',
                    'body': 'Body of the email'
                  },
                );

                if (await canLaunch(emailLaunchUri.toString())) {
                  launch(emailLaunchUri.toString());
                } else {
                  throw 'Could not launch $emailLaunchUri';
                }
              },
              child: Row(
                children: [
                  Icon(
                      FontAwesomeIcons.envelope,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text('Gmailga yozish'),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: shareApp,
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.share,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text('Ilovani ulashish'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
