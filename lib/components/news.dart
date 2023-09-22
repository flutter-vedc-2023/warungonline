import 'package:flutter/material.dart';
import 'package:gojek/theme.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 27, right: 20),
          child: Text(
            'Cek juga promo hari ini',
            style: bold18.copyWith(color: dark1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 27, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/promo.png',
                width: double.infinity,
                height: 160,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
