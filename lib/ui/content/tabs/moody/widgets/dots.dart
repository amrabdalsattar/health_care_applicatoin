import 'package:flutter/cupertino.dart';
import 'package:health_care_app/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/app_state_manager.dart';


class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    AppStateManager provider = Provider.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i = 0; i < 3; i++)
          Container(
            height: 6,
            width: 6,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: provider.sliderCurrentIndex == i ? AppColor.grey : AppColor.liteGrey,
              shape: BoxShape.circle,
            ),
          )

      ],
    );
  }
}
