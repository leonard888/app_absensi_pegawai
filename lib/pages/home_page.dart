// ignore_for_file: unnecessary_const

import 'package:app_presensi_pegawai/pages/office_list_page.dart';
import 'package:app_presensi_pegawai/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _myPage = PageController(initialPage: 0);
  int currentPage = 0;

  _changePage(int index) {
    setState(() {
      _myPage.jumpToPage(index);
      currentPage = index;
    });
  }

  _isPageActive(int index) {
    return index == currentPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Shift",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        elevation: 0,
      ),
      body: PageView(
        controller: _myPage,
        children: const [
          HPage(),
          OfficeListPage(),
          Text("Hello"),
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

class HPage extends StatefulWidget {
  const HPage({Key? key}) : super(key: key);

  @override
  _HPageState createState() => _HPageState();
}

class _HPageState extends State<HPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://via.placeholder.com/48x48",
                        height: 48,
                        width: 48,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "johndoe@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 16,
            ),
            child: Text(
              "HISTORY",
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext ctx, int index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/attendance/detail");
                },
                borderRadius: BorderRadius.circular(8),
                splashColor: Colors.deepPurple.withAlpha(40),
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello world",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 24),
                            Text(
                              "23/11/2021 - 10:10 AM",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Check In",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    )),
              );
            },
          ),
        ],
      ),
    );
  }
}
