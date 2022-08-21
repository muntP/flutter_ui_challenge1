import 'package:flutter/material.dart';

import '../../../assets/style.dart';
import 'tabs_content.dart';

class MovieTabs extends StatefulWidget {
  const MovieTabs({Key? key}) : super(key: key);

  @override
  State<MovieTabs> createState() => _MovieTabsState();
}

class _MovieTabsState extends State<MovieTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Transform.translate(
              offset: const Offset(0, 34),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 1,
                width: double.infinity,
                color: grey800,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 35,
              width: double.infinity,
              child: TabBar(
                controller: _tabController,
                indicatorColor: playButtonColor,
                indicatorWeight: 1.5,
                tabs: [
                  selectedTab('Schedule', 0),
                  selectedTab('Synopsis', 1),
                ],
              ),
            ),
          ],
        ),
        TabsContent(tabController: _tabController),
      ],
    );
  }

  Widget selectedTab(String nameTab, int indexTab) {
    return Text(
      nameTab,
      style: _tabController.index == indexTab
          ? tabsTextStyle
          : tabsTextStyle.copyWith(color: white6, fontWeight: FontWeight.w400)
    );
  }
}
