import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_navigation_bar.dart';
import 'package:bmi_calculator/widgets/result_box.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            ResultBox(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
          onTap: (){
            Navigator.pop(context);
          },
          title: "Re - Calculate"),
    );
  }
}
