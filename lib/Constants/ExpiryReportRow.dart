import 'package:flutter/material.dart';
import 'package:powerzone/AppStyles/AppStyle.dart';

import 'ReportCard.dart';
class ExpiryReportRow extends StatelessWidget {
  const ExpiryReportRow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Container(
      color: AppStyle.cardcolor,
      height: size*0.20,
      child: GridView(
        children: [
          ReportCard(),
          ReportCard(),
          ReportCard(),
          ReportCard()
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
