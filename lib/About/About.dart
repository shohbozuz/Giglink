import 'package:Giglink.uz/Notificatoins/notifications.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biz haqimizda'),
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
      // drawer: CustomDrawer(),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Card(
            child: Column(
              children: [
                SizedBox(height: 18),
                Text(
                  "Loyiha haqida",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 21.0,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Sizni qulay nashrimizda koʻrishdan xursandmiz!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
                Text(
                  "Bu yerda biz IT olamidagi eng dolzarb yangiliklar haqida gaplashamiz. Gʻarb va mahalliy yangiliklar, startap hikoyalari, dasturlashdan tortib sun'iy intellektgacha boʻlgan noyob texnologiyalarni birgalikda oʻrganish, shuningdek, gadjetlar haqida qiziqarli va batafsil sharhlar -  tezroq va hamma uchun qulayroq, faqat bizda! Xush kelibsiz!",
                  style: TextStyle(
                    // fontWeight: FontWeight.w300,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
                Text(
                  "Reklama va maxsus loyihalar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
                GFButton(
                    onPressed: () async {
                      await launch(
                        "https://t.me/giglink_admin",
                        forceSafariVC: false,
                        forceWebView: false,
                        headers: <String, String>{
                          'my_header_key': 'my_header_value'
                        },
                      );
                    },
                    text: "Murojaat uchun"),
                SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
