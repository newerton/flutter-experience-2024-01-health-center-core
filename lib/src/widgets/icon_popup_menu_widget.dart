import 'package:flutter/material.dart';
import 'package:health_center_core/health_center_core.dart';

class IconPopupMenuWidget extends StatelessWidget {
  const IconPopupMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: HealthCenterTheme.orangeColor, width: 2)),
        child: const Icon(Icons.more_horiz_rounded,
            color: HealthCenterTheme.orangeColor),
      ),
    );
  }
}
