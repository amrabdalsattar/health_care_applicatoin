import 'package:flutter/material.dart';
import 'package:health_care_app/utils/app_state_manager.dart';
import 'package:health_care_app/utils/colors.dart';
import 'package:provider/provider.dart';

class ChipGenerator extends StatelessWidget {
  final int chipIndex; // Unique index for each chip
  late AppStateManager provider;
  final String title;

  ChipGenerator({super.key, required this.chipIndex, required this.title});

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    List<bool> isSelectedList = provider.isSelectedList;
    bool isSelected = isSelectedList[chipIndex];

    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: FilterChip(
        backgroundColor: AppColor.litePurple,
        label: Text(title),
        onSelected: (value) {
          isSelectedList[chipIndex] = value;
          provider.switchSelection(isSelectedList[chipIndex]);
        },
        selected: isSelected,
      ),
    );
  }
}
