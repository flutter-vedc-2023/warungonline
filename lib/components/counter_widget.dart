import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
  });

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => setState(() => count--),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 40,
          child: Center(
            child: Text(
              "$count",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => setState(() => count++),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
