import 'package:flutter/material.dart';

import 'scheldule_tab.dart';
import 'synopsis_tab.dart';

class TabsContent extends StatelessWidget {
  const TabsContent({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 48,
      width: double.infinity,
      child: TabBarView(
        controller: tabController,
        children: const [
          ScheduleTab(),
          SynopsisTab(),
        ],
      ),
    );
  }
}
