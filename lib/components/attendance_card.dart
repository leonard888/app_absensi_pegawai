import 'package:app_presensi_pegawai/models/attendance.dart';
import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  final void Function() onTap;
  final AttendanceOfficeAttributes attendance;
  const AttendanceCard(
      {Key? key, required this.onTap, required this.attendance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      splashColor: Colors.deepPurple.withAlpha(40),
      child: Container(
        padding: const EdgeInsets.symmetric(
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
                  attendance.office!.name,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 24),
                Text(
                  attendance.createdAt!.toIso8601String(),
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            Text(
              attendance.status ?? '',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
