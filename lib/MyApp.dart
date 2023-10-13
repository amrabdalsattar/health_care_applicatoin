import 'package:flutter/material.dart';
import 'package:health_care_app/screens/alice_care_home_screen.dart';
import 'package:health_care_app/screens/moody_home_screen.dart';
import 'package:health_care_app/screens/workout_home_screen.dart';
import 'package:health_care_app/utils/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        MoodyHomeScreen.routeName: (_) => MoodyHomeScreen(),
        WorkoutHomeScreen.routeName: (_) => const WorkoutHomeScreen(),
        ALiceCareHomeScreen.routeName: (_) => const ALiceCareHomeScreen()
      },
      initialRoute: MoodyHomeScreen.routeName,
    );
  }
}
