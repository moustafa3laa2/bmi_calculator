import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 27),
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 20,
        children: [
          Text(
            "Height",
            style: TextStyle(
              color: Color(0xff111111),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "150",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "cm",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: 0.5,
            onChanged: (value) {

            },
            activeColor: Color(0xffE83D67),
            inactiveColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
