import 'dart:convert';

import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:http/http.dart' as http;
import 'package:app_presensi_pegawai/models/submodels/user.dart';
import 'package:app_presensi_pegawai/services/api/auth.dart';

class UserService {
  // Future<U> create() {

  // }
  Future<List<UserAttributes>> find(String? filter) async {
    var jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/users?filters[id][\$ne]=$filter');

    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });
    return List<UserAttributes>.from(
      json.decode(response.body).map((x) => UserAttributes.fromJson(x)),
    );
  }

  Future<UserAttributes> findOne(String id) async {
    var jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/users/$id');
    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });
    return UserAttributes.fromJson(json.decode(response.body));
  }

  update() {}
  destroy() {}
  Future<UserAttributes> profile() async {
    var jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/users/me');

    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });

    return UserAttributes.fromJson(json.decode(response.body));
  }
}
