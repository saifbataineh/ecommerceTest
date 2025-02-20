import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class RatingProcessIndicator extends StatelessWidget {
  const RatingProcessIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        SizedBox(
          width: TDeviceUtils.getScreenWidth() * 0.5,
          child: Expanded(
            flex: 11,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: AppColors.grey,
              valueColor: const AlwaysStoppedAnimation(AppColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ],
    );
  }
}
