import 'package:farm_gilar/pages/servicespage/services_page.dart';
import 'package:flutter/material.dart';
import 'package:farm_gilar/pages/homepage/LandingPage.dart';
import 'package:farm_gilar/pages/navbar/navbar.dart';
import 'package:farm_gilar/pages/contactpage/contact_page.dart';
import 'package:provider/provider.dart';
import 'package:farm_gilar/providers/utility_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var utilityProvider;
  var width;
  var height;
  //ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue, Colors.blue]),
            ),
            child: SingleChildScrollView(
                controller: utilityProvider.getScrollController(),
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    TopNavbar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: LandingPage(),
                    ),
                    ServicesPage(),
                    ContactPage(),
                  ],
                ))));
  }
}
