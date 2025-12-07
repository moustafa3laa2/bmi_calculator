import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String statues;
  final double resValue;
  final String description;
  const ResultScreen({
    super.key,
    required this.statues,
    required this.resValue,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Result",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Container(
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
                      statues,
                      style: TextStyle(
                        color: Color(0xff21BF73),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      resValue.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: () {
          Navigator.pop(context);
        },
        title: "Re - Calculate",
      ),
    );
  }
}
