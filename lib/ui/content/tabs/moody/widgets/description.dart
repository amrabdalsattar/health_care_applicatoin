import 'package:flutter/material.dart';
import '../../../../../utils/app_theme.dart';

class Description extends StatelessWidget {
  final String leftHand;
  final Color color;
  final bool except;

  const Description({super.key,
    required this.leftHand,
    required this.color,
    this.except = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            leftHand,
            style: except == false ? AppThemes.titles : AppThemes.titles.copyWith(fontSize: 16),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "See more",
                style: AppThemes.seeMoreText.copyWith(color: color),
              ),
              Icon(
                Icons.chevron_right,
                color: color, // Set the color property of the Icon widget.
              )
            ],
          ),
        ],
      ),
    );
  }
}
