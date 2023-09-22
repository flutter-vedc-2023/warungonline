import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Image.asset(
              'assets/images/icons.png',
              width: 192.71,
              height: 205,
            ),
            const SizedBox(
              height: 60.0,
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                border: InputBorder.none,
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                filled: true,
                contentPadding: const EdgeInsets.only(
                    bottom: 10.0, left: 10.0, right: 10.0),
                labelText: "Nis",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                border: InputBorder.none,
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                filled: true,
                contentPadding: const EdgeInsets.only(
                    bottom: 10.0, left: 10.0, right: 10.0),
                labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: () {},
              color: Colors.lightBlueAccent,
              child:
                  const Text('Log In', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
