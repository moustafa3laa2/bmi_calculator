import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  final IconData icon;
  final String gender;
  final void Function()? onTap;
  final bool isActive;
  const GenderBox({
    super.key,
    required this.icon,
    required this.gender,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? Color(0xff24263B) : Color(0xff333244),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                Icon(icon, size: 144),
                Text(
                  gender,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff8B8C9E),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
