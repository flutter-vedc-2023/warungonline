import 'package:flutter/material.dart';

import 'counter_widget.dart';

class MarketItem extends StatelessWidget {
  const MarketItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 87,
            height: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200,
              image: const DecorationImage(
                image: AssetImage('assets/images/2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Nasi Goreng",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "10.000",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CounterWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
