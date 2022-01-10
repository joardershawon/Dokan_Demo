import 'package:shared_preferences/shared_preferences.dart';

Future<void> resetPrefs(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}

Future<void> setToken(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', value);
}

Future<String> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final x = prefs.getString('token') ?? 'not found';
  return x;
}

Future<void> setUserName(String username) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(
    'username',
    username,
  );
}

Future<void> setEmail(String email) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(
    'email',
    email,
  );
}

Future<String> getUserName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final x = prefs.getString('username') ?? 'not found';
  return x;
}

Future<String> getEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final x = prefs.getString('email') ?? 'email not found';
  return x;
}
