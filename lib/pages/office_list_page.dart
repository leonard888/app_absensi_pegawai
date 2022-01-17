import 'package:app_presensi_pegawai/components/office_card.dart';
import 'package:flutter/material.dart';

class OfficeListPage extends StatefulWidget {
  const OfficeListPage({Key? key}) : super(key: key);

  @override
  _OfficeListPageState createState() => _OfficeListPageState();
}

class _OfficeListPageState extends State<OfficeListPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return OfficeCard(
          onTap: () {
            Navigator.pushNamed(context, "/office/detail");
          },
        );
      },
    );
  }
}
