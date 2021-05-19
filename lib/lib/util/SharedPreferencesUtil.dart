
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  // static const KEY_USER = "KEY_USER";

  static Future<void> setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

// static void setUser(User user) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setString(KEY_USER, jsonEncode(user));
// }
//
// static Future<User> getUser() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String jsonString = prefs.getString(KEY_USER);
//   if (jsonString == null) {
//     return null;
//   }
//   try {
//     return User.fromJson(jsonDecode(jsonString));
//   } catch (e) {
//     return null;
//   }
// }
}
