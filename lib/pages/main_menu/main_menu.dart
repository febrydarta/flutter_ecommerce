import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/about/about_page.dart';
import 'package:flutter_ecommerce/pages/feed/feed_page.dart';
import 'package:flutter_ecommerce/pages/help/help_page.dart';
import 'package:flutter_ecommerce/pages/home/home_page.dart';
import 'package:flutter_ecommerce/pages/login/login_page.dart';

class Mainmenu extends StatefulWidget {
  const Mainmenu({Key? key}) : super(key: key);

  @override
  _MainmenuState createState() => _MainmenuState();
}

class _MainmenuState extends State<Mainmenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ecommerce")
        ),
        body: TabBarView(
          children: [
            HomePage(), //tampilan awal menu
            FeedPage(),
            HelpPage(),
            AboutPage(),
            LoginPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          unselectedLabelColor: Colors.grey, //label yang tidak dpilih warnanya abu2
          labelColor: Colors.orange,// label yg dipilih orange
          tabs: [
            Tab(
              icon: Icon(Icons.home_outlined),
              iconMargin: EdgeInsets.only(bottom: 5),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.feed_outlined),
              iconMargin: EdgeInsets.only(bottom: 5),
              text: "Feeds",
            ),
            Tab(
              icon: Icon(Icons.help_outline_outlined),
              iconMargin: EdgeInsets.only(bottom: 5),
              text: "Help",
            ),
            Tab(
              icon: Icon(Icons.person_outline_outlined),
              iconMargin: EdgeInsets.only(bottom: 5),
              text: "About",
            ),
            Tab(
              icon: Icon(Icons.login_outlined),
              iconMargin: EdgeInsets.only(bottom: 5),
              text: "Login",
            ),
          ],
        ),
      ),
    );
  }
}
