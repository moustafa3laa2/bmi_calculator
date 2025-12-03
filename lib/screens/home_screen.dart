import 'package:bmi_calculator/widgets/counter_box.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_navigation_bar.dart';
import 'package:bmi_calculator/widgets/gender_box.dart';
import 'package:bmi_calculator/widgets/height_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            Row(
              children: [
                GenderBox(icon: Icons.male, gender: "Male"),
                SizedBox(width: 10),
                GenderBox(icon: Icons.female, gender: 'Female'),
              ],
            ),

            HeightBox(),

            Row(
              children: [
                CounterBox(title: 'Weight', value: 60),
                SizedBox(width: 10),
                CounterBox(title: 'Age', value: 26),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: CustomNavigationBar(title: "Calculate"),
    );
  }
}
