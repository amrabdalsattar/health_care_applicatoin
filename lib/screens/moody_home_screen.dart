import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_state_manager.dart';
import 'package:health_care_app/utils/colors.dart';
import 'package:provider/provider.dart';


import '../moody_content/tabs/calender.dart';
import '../moody_content/tabs/grid.dart';
import '../moody_content/tabs/moody_content.dart';
import '../moody_content/tabs/profile.dart';

class MoodyHomeScreen extends StatelessWidget {
  List<Widget> tab = [
    const MoodyContent(),
    const Grid(),
    const Calender(),
    const Profile()
  ];
  static const String routeName = "moody";
  late AppStateManager provider;

  MoodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.transparent,
          elevation: 0,
        ),
        body: tab[provider.currentIndex],
        bottomNavigationBar: buildBottomNav(),
      ),
    );
  }

  Widget buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: provider.currentIndex,
      onTap: (index) => {provider.updateCurrentIndex(index)},
      selectedItemColor: AppColor.green,
      unselectedItemColor: AppColor.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "●"),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.gridIcon)), label: "●"),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.calender)), label: "●"),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.profile)), label: "●"),
      ],
    );
  }
}
