import 'package:app_presensi_pegawai/models/submodels/geo.dart';
import 'package:app_presensi_pegawai/services/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AttendanceService {
  Future<void> create(
      {required int officeId,
      required int userId,
      required Geo location}) async {
    Uri uri = Uri.parse('$BASE_URL/api/attendances');

    var response = await http.post(
      uri,
      headers: {
        ...POST_HEADER,
      },
      body: json.encode({
        "data": {
          "user": userId,
          "office": officeId,
          "location": location.toJson()
        }
      }),
    );

    // return UserAuth.fromJson(json.decode(response.body));
  }

  find() {}
  findOne() {}
  update() {}
  destroy() {}
}
