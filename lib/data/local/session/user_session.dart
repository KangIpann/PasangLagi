import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user.dart';

class UserSessions{
  static const String _key ="user_sessions";
  static const String _emailKey = "email";
  static const String _passwordKey = "password";
  static const String _nameKey = "name";

  static saveSessions(User user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_key, jsonEncode(user.toJson()));
  }

  static Future<User?> getSessions() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userJson = prefs.getString(_key);
    if(userJson != null){
      return User.fromJson(jsonDecode(userJson));
    }else{
      return null;
    }
  }

  static deleteSession() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(_key);
  }
}