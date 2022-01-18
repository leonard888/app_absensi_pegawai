import 'package:app_presensi_pegawai/components/employee_card.dart';
import 'package:flutter/material.dart';

class EmployeeListPage extends StatefulWidget {
  const EmployeeListPage({Key? key}) : super(key: key);

  @override
  _EmployeeListPageState createState() => _EmployeeListPageState();
}

class _EmployeeListPageState extends State<EmployeeListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext ctx, int index) {
                return EmployeeCard(onTap: () {
                  Navigator.pushNamed(context, "/employee/detail");
                });
              }),
        ],
      ),
    );
  }
}
