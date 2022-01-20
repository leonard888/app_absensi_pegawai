import 'package:app_presensi_pegawai/models/submodels/geo.dart';
import 'package:app_presensi_pegawai/services/api/auth.dart';
import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AttendanceService {
  Future<void> create({
    required int officeId,
    required int userId,
    required Geo location,
  }) async {
    String? jwt = await AuthService().getJwt();
    Uri uri = Uri.parse('$BASE_URL/api/attendances');

    var response = await http.post(
      uri,
      headers: {
        'Authorization': 'Bearer $jwt',
        ...POST_HEADER,
      },
      body: json.encode({
        "data": {
          "user": userId,
          "office": officeId,
          "location": location.toJson(),
          "status": "checkin",
        }
      }),
    );

    // return UserAuth.fromJson(json.decode(response.body));
  }

  find() async {
    String? jwt = await AuthService().getJwt();

    Uri uri = Uri.parse('$BASE_URL/api/attendances');

    var response = await http.get(
      uri,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
    );
    // TODO: build model first
  }

  findOne() {}
  Future<void> update(String id, Map<String, dynamic> data) async {
    String? jwt = await AuthService().getJwt();

    Uri uri = Uri.parse('$BASE_URL/api/attendances/$id');

    var response = await http.put(
      uri,
      headers: {
        'Authorization': 'Bearer $jwt',
        ...POST_HEADER,
      },
      body: json.encode({"data": data}),
    );
  }

  destroy() {}
}
