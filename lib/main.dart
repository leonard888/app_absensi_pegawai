import 'package:flutter/material.dart';
import 'package:app_presensi_pegawai/pages/home_page.dart';
import 'package:app_presensi_pegawai/pages/login_page.dart';
import 'package:app_presensi_pegawai/pages/register_page.dart';
import 'package:app_presensi_pegawai/pages/scan_page.dart';

import 'package:app_presensi_pegawai/pages/manager/attendance/attendance_input_page.dart';
import 'package:app_presensi_pegawai/pages/manager/attendance/attendance_list_page.dart';

import 'package:app_presensi_pegawai/pages/manager/employee/employee_input_page.dart';
import 'package:app_presensi_pegawai/pages/manager/employee/employee_list_page.dart';

import 'package:app_presensi_pegawai/pages/manager/office/office_input_page.dart';
import 'package:app_presensi_pegawai/pages/manager/office/office_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
          centerTitle: true,
          foregroundColor: Colors.black, //here you can give the text color
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/scan': (context) => const ScanPage(),
        '/manager/attendance/input': (context) => const AttendanceInputPage(),
        '/manager/attendance/list': (context) => const AttendanceListPage(),
        '/manager/employee/input': (context) => const EmployeeInputPage(),
        '/manager/employee/list': (context) => const EmployeeListPage(),
        '/manager/office/input': (context) => const OfficeInputPage(),
        '/manager/office/list': (context) => const OfficeListPage(),
      },
    );
  }
}
