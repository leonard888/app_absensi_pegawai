import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class OfficeDetailPage extends StatefulWidget {
  const OfficeDetailPage({Key? key}) : super(key: key);

  @override
  _OfficeDetailPageState createState() => _OfficeDetailPageState();
}

class _OfficeDetailPageState extends State<OfficeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 220.0,
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FeatherIcons.edit,
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(24),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SCBD Office",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        children: [
                          Icon(
                            FeatherIcons.mapPin,
                            size: 16,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("DKI Jakarta"),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            FeatherIcons.phone,
                            size: 16,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("+6232323"),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Address",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text("DKI Jakarta, 12033"),
                      Text("Jl. Jenderal Sudirman No.Kav 52-53"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.grey[900],
      //   child: Container(
      //     padding: EdgeInsets.all(12),
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         elevation: 0,
      //         padding: EdgeInsets.symmetric(vertical: 12),
      //       ),
      //       onPressed: () {},
      //       child: Text("Check Out"),
      //     ),
      //   ),
      // ),
    );
  }
}
