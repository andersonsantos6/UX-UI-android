import 'package:flutter/material.dart';
import 'package:phone_portfolio/src/components/homePage/dateTime.dart';
import 'package:phone_portfolio/src/components/homePage/drawer/drawer_apps.dart';
import 'package:phone_portfolio/src/components/homePage/searchBar/search_bar.dart';
import 'package:phone_portfolio/src/components/mavBar/navigation_bar.dart';
import 'package:phone_portfolio/src/components/statusBar/status_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'lib/src/assets/home/background.jpg',
                fit: BoxFit.cover,
              )),
          Column(
            children: [
              StatusBar(),
              SizedBox(
                height: 20,
              ),
              DateTimeNow(),
              DrawerApps(),
              SearchBar(),
              CustomNavigationBar(),
            ],
          ),
        ]),
      ),
    );
  }
}
