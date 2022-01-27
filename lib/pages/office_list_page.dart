import 'package:app_presensi_pegawai/components/office_card.dart';
import 'package:app_presensi_pegawai/models/office.dart';
import 'package:app_presensi_pegawai/models/submodels/office.dart';
import 'package:app_presensi_pegawai/services/api/office.dart';
import 'package:flutter/material.dart';

class OfficeListPage extends StatefulWidget {
  const OfficeListPage({Key? key}) : super(key: key);

  @override
  _OfficeListPageState createState() => _OfficeListPageState();
}

class _OfficeListPageState extends State<OfficeListPage> {
  List<OfficeData> offices = [];

  _getOffices() async {
    OfficeFindMany response = await OfficeService().find();
    // print(response.data!.elementAt(0).attributes.cover!.data.id);
    if (mounted) {
      setState(() {
        offices = response.data ?? [];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getOffices();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: offices.length,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return OfficeCard(
          office: offices.elementAt(index),
          onTap: () {
            // TODO WULUNG: Kirim parameter officeId ke halaman detail
            Navigator.pushNamed(context, "/office/detail");
          },
        );
      },
    );
  }
}
