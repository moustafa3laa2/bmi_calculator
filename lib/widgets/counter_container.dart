import 'package:flutter/material.dart';

import 'counter_box.dart';

class CounterContainer extends StatelessWidget {
  final double weightValue;
  final void Function() incrementWeight;
  final void Function() decrementWeight;
  final void Function() incrementAge;
  final void Function() decrementAge;
  final int age;
  const CounterContainer({
    super.key,
    required this.weightValue,
    required this.incrementWeight,
    required this.decrementWeight,
    required this.incrementAge,
    required this.decrementAge,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterBox(
          increment: incrementWeight,
          decrement: decrementWeight,
          title: 'Weight',
          value: weightValue.toInt(),
        ),
        SizedBox(width: 10),
        CounterBox(
          increment: incrementAge,
          decrement: decrementAge,
          title: 'Age',
          value: age,
        ),
      ],
    );
  }
}
