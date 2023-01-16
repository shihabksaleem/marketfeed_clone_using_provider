// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/custom_indicator/custom_tab_Indicator.dart';
import 'package:marketfeeed/resources/widgets/app_drawer.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/global%20indiced%20tab/global_indices_tab.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/indian%20indices%20tab/indian_indices_Tab.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/leaderborad%20tab/LeaderboardTab.dart';
import 'package:marketfeeed/screeens/botttom_nav_bar_screens/market_screen/watchlist%20tab/watchlistTab.dart';

class MarketBottomtab extends StatelessWidget {
  get kHomeScaffoldColor => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, // length of tabs

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
                  bottom: const TabBar(
                    isScrollable: true,
                    indicator: CustomTabIndicator(),
                    labelColor: Color(0xFF4266c7),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Watchlist'),
                      Tab(text: 'Indian Indices'),
                      Tab(text: 'Global indices'),
                      Tab(text: 'Leaderboard'),
                    ],
                  ),
                ),
              ],
              body: TabBarView(
                children: <Widget>[
                  WatchlistTab(),
                  IndianIndicesTab(),
                  GlobalIndicesTab(),
                  LeaderBoardrTab(),
                ],
              ),
            )));
  }
}
