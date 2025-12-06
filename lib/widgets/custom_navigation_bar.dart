import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomNavigationBar({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        color: Color(0xffE83D67),
        child: Text(
          title,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
