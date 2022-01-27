import 'package:app_presensi_pegawai/components/employee_card.dart';
import 'package:app_presensi_pegawai/models/submodels/user.dart';
import 'package:app_presensi_pegawai/services/api/auth.dart';
import 'package:app_presensi_pegawai/services/api/user.dart';
import 'package:flutter/material.dart';

class EmployeeListPage extends StatefulWidget {
  const EmployeeListPage({Key? key}) : super(key: key);

  @override
  _EmployeeListPageState createState() => _EmployeeListPageState();
}

class _EmployeeListPageState extends State<EmployeeListPage> {
  List<UserAttributes> users = [];

  _getEmployee() async {
    String? userId = await AuthService().getUserId();

    List<UserAttributes> response = await UserService().find(userId);

    if (mounted) {
      setState(() {
        users = response;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext ctx, int index) {
                return EmployeeCard(
                  employee: users.elementAt(index),
                  onTap: () {
                    // TODO LEON: Kirim parameter userId ke halaman detail
                    Navigator.pushNamed(context, "/employee/detail");
                  },
                );
              }),
        ],
      ),
    );
  }
}
