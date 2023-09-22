import 'package:flutter/material.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/menus.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/theme.dart';

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
      appBar: AppBar(
        title: Text(widget.warung),
        automaticallyImplyLeading: false,
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [Gopay(), Menus(), News()],
      )),
    );
  }
}
