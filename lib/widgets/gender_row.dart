import 'package:flutter/material.dart';

import 'gender_box.dart';

class GenderRow extends StatelessWidget {
  final bool isMale;
  final Function(bool) onGenderChanged;
  const GenderRow({
    super.key,
    required this.isMale,
    required this.onGenderChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderBox(
          isActive: isMale,
          onTap: () => onGenderChanged(true),
          icon: Icons.male,
          gender: "Male",
        ),
        SizedBox(width: 10),
        GenderBox(
          isActive: !isMale,
          onTap: () => onGenderChanged(false),
          icon: Icons.female,
          gender: 'Female',
        ),
      ],
    );
  }
}
