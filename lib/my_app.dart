import 'package:flutter/material.dart';
import 'package:health_care_app/ui/screens/home_screen.dart';
import 'package:health_care_app/utils/app_assets.dart';
import 'package:health_care_app/utils/app_state_manager.dart';
import 'package:health_care_app/utils/app_theme.dart';
import 'package:health_care_app/utils/colors.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  late AppStateManager provider;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return MaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
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
