import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/data/bar_graph_data.dart';
import 'package:responsive_flutter_app/models/graph_model.dart';
import 'package:responsive_flutter_app/responsiveness/responsive.dart';
import 'package:responsive_flutter_app/utils/colors.dart';
import 'package:responsive_flutter_app/utils/constance.dart';
import 'package:responsive_flutter_app/widgets/custom_card.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BargraphData();
    final isMobile = Responsive.isMobile(context); //Responsive
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: barGraphData.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 3, //Responsive
        crossAxisSpacing: sizedBoxValue,
        mainAxisSpacing: sizedBoxValue,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barGraphData.data[index].label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxValue,
              ),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      color: barGraphData.data[index].color,
                      points: barGraphData.data[index].graph,
                    ),
                    borderData: FlBorderData(
                      border: const Border(),
                    ),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                barGraphData.lable[value.toInt()],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: kGreyColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                // ignore: deprecated_member_use
                color: color.withOpacity(
                  point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
