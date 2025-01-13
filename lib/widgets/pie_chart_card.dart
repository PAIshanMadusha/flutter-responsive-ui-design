import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/data/pie_chart_data.dart';
import 'package:responsive_flutter_app/utils/colors.dart';

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = PieChartDataSample();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartData.pieChartSectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "70%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                        height: 0.6,
                        fontSize: 20,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "of 100%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        // ignore: deprecated_member_use
                        color: kSecondaryColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
