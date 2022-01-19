import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:app_presensi_pegawai/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<UserAuth> login(identifier, password) async {
    Uri uri = Uri.parse('$BASE_URL/api/auth/local');

    var response = await http.post(
      uri,
      headers: {
        ...POST_HEADER,
      },
      body: json.encode({
        "identifier": identifier,
        "password": password,
      }),
    );

    return UserAuth.fromJson(json.decode(response.body));
  }

  static Future<UserAuth> register(username, email, password) async {
    Uri uri = Uri.parse('$BASE_URL/api/auth/local/register');

    var response = await http.post(
      uri,
      headers: {
        ...POST_HEADER,
      },
      body: json.encode({
        "username": username,
        "email": email,
        "password": password,
      }),
    );

    return UserAuth.fromJson(json.decode(response.body));
  }

  Future<String?> getJwt() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jwt = prefs.getString("jwt");

    return jwt;
  }

  Future<void> deleteJwt() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("jwt");
  }
}
