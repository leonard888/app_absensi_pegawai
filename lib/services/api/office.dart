import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:app_presensi_pegawai/models/office.dart';
import 'package:app_presensi_pegawai/services/api/auth.dart';
import 'package:app_presensi_pegawai/services/constants.dart';

class OfficeService {
  create() {}
  Future<OfficeFindMany> find() async {
    var jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/offices?populate=*');

    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });

    // return List<OfficeRequest>.from(
    //   json.decode(response.body).map((x) => OfficeRequest.fromJson(x)),
    // );
    return OfficeFindMany.fromJson(json.decode(response.body));
  }

  Future<OfficeFindOne> findOne(String id) async {
    var jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/offices/$id');

    var response = await http.get(uri, headers: {
      'Authorization': 'Bearer $jwt',
    });

    return OfficeFindOne.fromJson(json.decode(response.body));
  }

  update() {}
  destroy() {}
}
