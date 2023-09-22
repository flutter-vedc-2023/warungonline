import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderPage extends GetView<OrderController> {
  const OrderPage({super.key, this.title = 'Order Page'});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const PesananWidget(),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 23,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFECEAEA),
                ),
              ),
              child: const Column(
                children: [
                  Text("Ringkasan pembayaran"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Harga"),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text("Ongkir"),
                          ),
                          Text("Biaya Lain"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("13.000"),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text("0"),
                          ),
                          Text("1.000"),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Pembayaran"),
                      Text("14.000"),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {}, child: const Text("Pesan Sekarang")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class PesananWidget extends StatelessWidget {
  const PesananWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFEEEED5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pesanan",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Andik Fajaryanto",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  "XII RPL 2",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.red),
            child: const Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
