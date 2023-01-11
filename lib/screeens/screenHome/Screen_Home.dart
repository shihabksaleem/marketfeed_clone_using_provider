// ignore_for_file: prefer_final_fields, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/Colors/colors.dart';
import 'package:marketfeeed/resources/provider%20classes/Provider_model.dart';
import 'package:marketfeeed/resources/widgets/app_drawer.dart';
import 'package:marketfeeed/screeens/Botttom_nav_bar_screens/Market_screen/Market_screen.dart';
import 'package:marketfeeed/screeens/Botttom_nav_bar_screens/Read%20Screen/Read_screen.dart';
import 'package:marketfeeed/screeens/Botttom_nav_bar_screens/Signals_Screen/Signals_screens.dart';
import 'package:marketfeeed/screeens/Botttom_nav_bar_screens/Traders%20Screen/Traders_screen.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
  static String id = 'Home_Screen';
  //Bottom bar navigation list
  List _selectedTabList = [
    TradersBottomTab(),
    ReadBottomTab(),
    SignalsBottomTab(),
    MarketBottomtab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeScaffoldColor,
      appBar: Provider.of<ProviderModel>(context).appBarVisible
          ? AppBar(
              elevation: 0,
              leading: Builder(
                builder: (context) => IconButton(
                  padding: const EdgeInsets.only(left: 15),
                  color: Colors.black,
                  icon: const Icon(
                    Icons.person,
                    size: 30,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              centerTitle: true,
              title: Image.asset(
                'images/logo.png',
                width: 200,
              ),
            )
          : null,
      drawer: SideBar(),
      body: _selectedTabList[
          Provider.of<ProviderModel>(context).selectedTabIndex],
      bottomNavigationBar: Consumer<ProviderModel>(
        builder: (context, value, child) => BottomNavigationBar(
            onTap: (index) {
              value.onItemTapped(index);
            },
            currentIndex: value.selectedTabIndex,
            selectedItemColor: kActiveIconColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.group), label: 'Traders'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book), label: 'Read'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_outlined), label: 'Signal'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.analytics), label: 'Market'),
            ]),
      ),
    );
  }
}
