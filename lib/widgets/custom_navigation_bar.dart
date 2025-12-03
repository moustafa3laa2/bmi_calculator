import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final String title;
  const CustomNavigationBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      color: Color(0xffE83D67),
      child: Text(
        title,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }
}
