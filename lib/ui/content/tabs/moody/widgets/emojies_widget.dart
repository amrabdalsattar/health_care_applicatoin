import 'package:flutter/cupertino.dart';
import 'package:health_care_app/utils/app_theme.dart';

class Emotion extends StatelessWidget {
  final String emotionPath;
  final String description;
  const Emotion({super.key, required this.emotionPath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(emotionPath)),
        const SizedBox(height: 8,),
        Text(description, style: AppThemes.emotionDescription,)
      ],
    );
  }
}
