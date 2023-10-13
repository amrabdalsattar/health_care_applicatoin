import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_state_manager.dart';
import 'package:health_care_app/utils/colors.dart';
import 'package:provider/provider.dart';
import '../content/tabs/alice_care/alice_care.dart';
import '../content/tabs/moody/moody.dart';
import '../content/tabs/profile.dart';
import '../content/tabs/workout/workout.dart';

class HomeScreen extends StatelessWidget {
  List<Widget> tab = [
    const MoodyContent(),
    const Workout(),
    const AliceCare(),
    const Profile()
  ];
  static const String routeName = "moody";
  late AppStateManager provider;

  HomeScreen({super.key});

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
        body: tab[1],/// change it to current index
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
