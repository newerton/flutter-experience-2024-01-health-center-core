import 'package:flutter/material.dart';
import 'package:flutter_experience_medical_laboratory_core/flutter_experience_medical_laboratory_core.dart';

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
                color: MedicalLaboratoryTheme.orangeColor, width: 2)),
        child: const Icon(Icons.more_horiz_rounded,
            color: MedicalLaboratoryTheme.orangeColor),
      ),
    );
  }
}
