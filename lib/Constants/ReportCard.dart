import 'package:flutter/material.dart';
import 'package:powerzone/AppStyles/AppStyle.dart';
class ReportCard extends StatelessWidget {
  const ReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      color: AppStyle.cardcolor,
      child: ListTile(
        title: Text("01"),
        subtitle: Text("Upcoming Expiry In (1-3) Days"),
      ),
    );
  }
}
