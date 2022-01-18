import 'dart:convert';

import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:http/http.dart' as http;
import 'package:app_presensi_pegawai/models/submodels/user.dart';
import 'package:app_presensi_pegawai/services/api/auth.dart';

class UserService {
  create() {}
  find() {}
  findOne() {}
  update() {}
  destroy() {}
  Future<UserAttributes> profile() async {
    var jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/users/me');

    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });

    print(response.body);

    return UserAttributes.fromJson(json.decode(response.body));
  }
}
