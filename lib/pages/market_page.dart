import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/menus.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/theme.dart';

import '../components/market_item.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key, required this.warung});
  final String warung;

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 142,
            padding: EdgeInsets.only(
              left: 20,
              top: MediaQuery.of(context).padding.top + 8,
            ),
            color: Color(0xFFF46A4C),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      print("Back");
                      Get.back();
                    },
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.blue,
                      ),
                      width: 44,
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        widget.warung,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  20,
                  (index) => MarketItem(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
