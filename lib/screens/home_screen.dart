import 'dart:math';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/counter_box.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_navigation_bar.dart';
import 'package:bmi_calculator/widgets/gender_box.dart';
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
              Row(
                children: [
                  GenderBox(
                    isActive: isMale,
                    onTap: () {
                      isMale = true;
                      setState(() {});
                    },
                    icon: Icons.male,
                    gender: "Male",
                  ),
                  SizedBox(width: 10),
                  GenderBox(
                    isActive: !isMale,
                    onTap: () {
                      isMale = false;
                      setState(() {});
                    },
                    icon: Icons.female,
                    gender: 'Female',
                  ),
                ],
              ),


              Container(
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
                            text: heightValue.toStringAsFixed(1),
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
                      value: heightValue,
                      max: 250,
                      onChanged: (value) {
                        setState(() {
                          heightValue = value;
                        });
                      },
                      activeColor: Color(0xffE83D67),
                      inactiveColor: Colors.white,
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  CounterBox(
                    increment: () {
                      setState(() {
                        weightValue++;
                      });
                    },
                    decrement: () {
                      setState(() {
                        if (weightValue > 40) {
                          weightValue--;
                        }
                      });
                    },
                    title: 'Weight',
                    value: weightValue.toInt(),
                  ),
                  SizedBox(width: 10),
                  CounterBox(
                    increment: () {
                      setState(() {
                        age++;
                      });
                    },
                    decrement: () {
                      setState(() {
                        if (age > 16) {
                          age--;
                        }
                      });
                    },
                    title: 'Age',
                    value: age,
                  ),
                ],
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
        weightValue / pow(heightValue/100, 2) <= 24.9) {
      return "Normal";
    } else if (weightValue / pow((heightValue / 100), 2) >= 25 &&
        weightValue / pow(heightValue/100, 2) <= 39.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String description() {
    if (weightValue / pow((heightValue / 100), 2) <= 18.4) {
      return "You may need to increase your calorie intake and follow a balanced diet.";
    } else if (weightValue / pow((heightValue / 100), 2) >= 18.5 &&
        weightValue / pow(heightValue/100, 2) <= 24.9) {
      return "Your BMI is within the healthy weight range. Keep maintaining a balanced diet and regular physical activity.";
    } else if (weightValue / pow((heightValue / 100), 2) >= 25 &&
        weightValue / pow(heightValue/100, 2) <= 39.9) {
      return "Your BMI is higher than the normal range. Consider adopting healthier eating habits and increasing physical activity.";
    } else {
      return "Your BMI is significantly above the healthy range. It is recommended to consult a healthcare professional and consider a weight-management plan.";
    }
  }
}
