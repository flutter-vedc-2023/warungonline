import 'package:get_storage/get_storage.dart';

class UserLoginLocal {
  GetStorage box = GetStorage();
  final String _key = 'user_login_key';

  Future<void> saveUserLogin(Map<String, dynamic> user) =>box.write(_key, user);
  Map<String, dynamic> getUserLogin() => box.read(_key);
  bool isUserLogin() => box.hasData(_key);
  Future<void> removeUserLogin() => box.remove(_key);
  
  
}