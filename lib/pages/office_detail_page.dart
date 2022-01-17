import 'package:flutter/material.dart';

class OfficeDetailPage extends StatefulWidget {
  const OfficeDetailPage({Key? key}) : super(key: key);

  @override
  _OfficeDetailPageState createState() => _OfficeDetailPageState();
}

class _OfficeDetailPageState extends State<OfficeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "SCBD",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Text("TODO: Build Office detail page"),
      ),
    );
  }
}
