import 'package:flutter/material.dart';

class CounterBox extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? increment;
  final void Function()? decrement;
  const CounterBox({super.key, required this.title, required this.value, this.increment, this.decrement});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff333244),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff8B8C9E),
                ),
              ),
              Text(
                value.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton.small(
                    onPressed: decrement,
                    key: UniqueKey(),
                    heroTag: "$title 1",
                    backgroundColor: Color(0xff8B8C9E),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(100),
                    ),
                    child: Icon(Icons.remove, size: 32, color: Colors.white),
                  ),
                  FloatingActionButton.small(
                    onPressed: increment,
                    key: UniqueKey(),
                    heroTag: "$title 2",
                    backgroundColor: Color(0xff8B8C9E),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(100),
                    ),
                    child: Icon(Icons.add, size: 32, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
