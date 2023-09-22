import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.warung),
      ),
    );
  }
}
