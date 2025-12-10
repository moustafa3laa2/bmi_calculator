import 'dart:math';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/counter_container.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_navigation_bar.dart';
import 'package:bmi_calculator/widgets/gender_row.dart';
import 'package:bmi_calculator/widgets/height_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double heightValue = 160;
  double weightValue = 45;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              GenderRow(
                isMale: isMale,
                onGenderChanged: (value) {
                  setState(() {
                    isMale = value;
                  });
                },
              ),

              HeightContainer(
                heightValue: heightValue,
                onChanged: (value) {
                  setState(() {
                    heightValue = value;
                  });
                },
              ),
              CounterContainer(
                weightValue: weightValue,
                incrementWeight: () {
                  setState(() {
                    weightValue++;
                  });
                },
                decrementWeight: () {
                  setState(() {
                    if (weightValue > 40) {
                      weightValue--;
                    }
                  });
                },
                incrementAge: () {
                  setState(() {
                    age++;
                  });
                },
                decrementAge: () {
                  setState(() {
                    if (age > 16) {
                      age--;
                    }
                  });
                },
                age: age,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomNavigationBar(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                resValue: weightValue / pow((heightValue / 100), 2),
                statues: status(),
                description: description(),
              ),
            ),
          );
        },
        title: "Calculate",
      ),
    );
  }

  String status() {
    if (weightValue / pow((heightValue / 100), 2) <= 18.4) {
      return "Underweight";
    } else if (weightValue / pow((heightValue / 100), 2) >= 18.5 &&
        weightValue / pow(heightValue / 100, 2) <= 24.9) {
      return "Normal";
    } else if (weightValue / pow((heightValue / 100), 2) >= 25 &&
        weightValue / pow(heightValue / 100, 2) <= 39.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String description() {
    if (weightValue / pow((heightValue / 100), 2) <= 18.4) {
      return "You may need to increase your calorie intake and follow a balanced diet.";
    } else if (weightValue / pow((heightValue / 100), 2) >= 18.5 &&
        weightValue / pow(heightValue / 100, 2) <= 24.9) {
      return "Your BMI is within the healthy weight range. Keep maintaining a balanced diet and regular physical activity.";
    } else if (weightValue / pow((heightValue / 100), 2) >= 25 &&
        weightValue / pow(heightValue / 100, 2) <= 39.9) {
      return "Your BMI is higher than the normal range. Consider adopting healthier eating habits and increasing physical activity.";
    } else {
      return "Your BMI is significantly above the healthy range. It is recommended to consult a healthcare professional and consider a weight-management plan.";
    }
  }
}
