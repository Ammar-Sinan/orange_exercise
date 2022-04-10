import 'package:flutter/material.dart';

import '../widgets/home_header.dart';

import '../screens/all_screen.dart';
import '../screens/sport_screen.dart';
import '../screens/men_screen.dart';
import '../screens/women_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var selectedTab = 0;
  var currentIndex = "First Tab";

  final List<Map<String, dynamic>> _pages = [
    {
      'page': const AllScreen(),
    },
    {
      'page': const SportScreen(),
    },
    {
      'page': const MenPage(),
    },
    {
      'page': const WomenScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const HomePageHeader(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text(
                    'All',
                    style: TextStyle(
                        fontWeight: selectedTab == 0
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        selectedTab = 0;
                      },
                    );
                  },
                ),
                TextButton(
                  child: Text(
                    'Sport',
                    style: TextStyle(
                        fontWeight: selectedTab == 1
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        selectedTab = 1;
                      },
                    );
                  },
                ),
                TextButton(
                  child: Text(
                    'Men',
                    style: TextStyle(
                        fontWeight: selectedTab == 2
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        selectedTab = 2;
                      },
                    );
                  },
                ),
                TextButton(
                  child: Text(
                    'Women',
                    style: TextStyle(
                        fontWeight: selectedTab == 3
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        selectedTab = 3;
                      },
                    );
                  },
                )
              ],
            ),
            _pages[selectedTab]['page'],

            /// to Select the page content
          ],
        ),
      ),
    );
  }
}
