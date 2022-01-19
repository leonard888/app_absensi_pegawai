import 'package:app_presensi_pegawai/pages/employee_list_page.dart';
import 'package:app_presensi_pegawai/pages/home_page.dart';
import 'package:app_presensi_pegawai/services/api/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:app_presensi_pegawai/pages/office_list_page.dart';
import 'package:app_presensi_pegawai/pages/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _myPage = PageController(initialPage: 0);
  int currentPage = 0;

  List<String> titles = [
    "Home",
    "Office",
    "Employee",
    "Profile",
  ];

  _changePage(int index) {
    setState(() {
      _myPage.jumpToPage(index);
      currentPage = index;
    });
  }

  _isPageActive(int index) {
    return index == currentPage;
  }

  _checkJwt() async {
    var jwt = await AuthService().getJwt();
    if (jwt == null) {
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  @override
  void initState() {
    super.initState();
    _checkJwt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          titles.elementAt(currentPage),
        ),
        elevation: 0,
      ),
      body: PageView(
        controller: _myPage,
        children: const [
          HomePage(),
          OfficeListPage(),
          EmployeeListPage(),
          ProfilePage(),
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.black,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  FeatherIcons.home,
                  color: _isPageActive(0) ? Colors.deepPurple : Colors.white,
                ),
                onPressed: () {
                  _changePage(0);
                }),
            IconButton(
                icon: Icon(
                  FeatherIcons.map,
                  color: _isPageActive(1) ? Colors.deepPurple : Colors.white,
                ),
                onPressed: () {
                  _changePage(1);
                }),
            const SizedBox(
              width: 24,
            ),
            IconButton(
                icon: Icon(
                  FeatherIcons.book,
                  color: _isPageActive(2) ? Colors.deepPurple : Colors.white,
                ),
                onPressed: () {
                  _changePage(2);
                }),
            IconButton(
                icon: Icon(
                  FeatherIcons.user,
                  color: _isPageActive(3) ? Colors.deepPurple : Colors.white,
                ),
                onPressed: () {
                  _changePage(3);
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.qr_code_scanner_outlined),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, "/scan");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
