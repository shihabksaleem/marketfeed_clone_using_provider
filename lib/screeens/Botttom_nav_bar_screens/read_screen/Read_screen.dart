// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/Colors/colors.dart';
import 'package:marketfeeed/resources/custom_indicator/custom_tab_Indicator.dart';
import 'package:marketfeeed/resources/widgets/app_drawer.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/read_screen/Tab%20screens/JargonsTab.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/read_screen/Tab%20screens/MarketTab.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/read_screen/Tab%20screens/EditorialTab.dart';

class ReadBottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // length of tabs

      child: Scaffold(
        drawer: SideBar(),
        backgroundColor: kHomeScaffoldColor,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
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
              floating: true,
              snap: true,
              pinned: true,
              title: Image.asset(
                'images/logo.png',
                width: 200,
              ),
              centerTitle: true,
              bottom: TabBar(
                isScrollable: true,
                indicator: const CustomTabIndicator(),
                labelColor: Color(0xFF4266c7),
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Market'),
                  Tab(text: 'Editorial'),
                  Tab(text: 'Jargons'),
                ],
              ),
            )
          ],
          body: Container(
            child: TabBarView(
              children: <Widget>[
                MarketTab(),
                EditorialTab(),
                JargonsTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
