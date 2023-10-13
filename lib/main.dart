import 'package:flutter/material.dart';
import 'package:health_care_app/my_app.dart';
import 'package:health_care_app/utils/app_state_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AppStateManager(),
    child: MyApp(),
  ));
}
