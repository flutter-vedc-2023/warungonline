import 'package:flutter/material.dart';
import 'package:gojek/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 192.71,
                  height: 205,
                ),
                const SizedBox(
                  height: 60.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
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
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        bottom: 4.0, left: 10.0, right: 10.0),
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  minWidth: 120.0,
                  height: 42.0,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder) => HomePage()));
                    }
                  },
                  color: Colors.lightBlueAccent,
                  child: const Text('Log In',
                      style: TextStyle(color: Colors.white)),
                ),
                Image.asset(
                  'assets/images/tut.png',
                  width: 180,
                  height: 180,
                ),
                Text(
                  'Design by andik & yudhi',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
