import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:app_presensi_pegawai/models/user.dart';

class AuthService {
  static Future<UserAuth> login(identifier, password) async {
    Uri uri = Uri.parse('$BASE_URL/auth/local');

    print(identifier);
    print(password);

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

    print(response.body);

    return UserAuth.fromJson(json.decode(response.body));
  }

  static Future<UserAuth> register(username, email, password) async {
    Uri uri = Uri.parse('$BASE_URL/auth/local/register');

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
}
