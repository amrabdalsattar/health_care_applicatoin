import 'package:flutter/material.dart';
import 'package:health_care_app/ui/content/tabs/workout/widgets/tab_bar_scroll.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: AppColor.transparent,
          bottom: const TabBar(
            labelStyle: AppThemes.appDescription,
            dividerColor: AppColor.purple,
            labelColor: AppColor.purple,
            unselectedLabelColor: AppColor.grey,
            tabs: <Widget>[
              Tab(
                text: "All Type",
              ),
              Tab(
                text: "Full Body",
              ),
              Tab(
                text: "Upper",
              ),
              Tab(
                text: "Lower",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabBarScroll(),
            TabBarScroll(),
            TabBarScroll(),
            TabBarScroll(),
          ],
        ),
      ),
    );
  }
}
