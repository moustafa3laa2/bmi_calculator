import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      padding: EdgeInsets.symmetric(horizontal: 33, vertical: 32),
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            "Normal",
            style: TextStyle(
              color: Color(0xff21BF73),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "19.2",
            style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30),
          Text(
            "You Have a Normal Body Weight,",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff8B8C9E),
            ),
          ),
          Text(
            "Good Job.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff8B8C9E),
            ),
          ),
        ],
      ),
    );
  }
}
