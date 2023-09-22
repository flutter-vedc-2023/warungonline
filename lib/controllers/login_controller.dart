import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController {
  final TextEditingController ctrlNisn = TextEditingController();
  final TextEditingController ctrlPassword = TextEditingController();

  final isLoading = false.obs;
  final key = GlobalKey<FormState>();
  final supabase = Supabase.instance.client;

  Future<void> login() async {
    isLoading.value = true;
    final user = await supabase
        .from("users")
        .select()
        .filter("nisn", "eq", ctrlNisn.text)
        .filter("password", "eq", ctrlPassword.text);
    if (user is List && user.isEmpty) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        const SnackBar(
          content: Text("Gagal Login"),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      Get.offNamed("/market");
    }
    isLoading.value = false;
  }
}
