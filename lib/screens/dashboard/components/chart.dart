import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          SizedBox(
            height: kDefaultPadding,
          ),
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSectionData,
            ),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                '29.1',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 0.5),
              ),
              Text('of 128GB')
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
      color: kPrimaryColor, value: 25, showTitle: false, radius: 25),
  PieChartSectionData(
      color: Color(0xFF26e5ff), value: 20, showTitle: false, radius: 22),
  PieChartSectionData(
      color: Color(0xFFffcf26), value: 10, showTitle: false, radius: 19),
  PieChartSectionData(
      color: Color(0xFFee2727), value: 15, showTitle: false, radius: 16),
  PieChartSectionData(
      color: kPrimaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13),
];
