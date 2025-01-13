import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_flutter_app/utils/colors.dart';

class PieChartDataSample{
  final pieChartSectionData = [
    PieChartSectionData(
      color: kGreyColor,
      value: 30,
      showTitle: false,
      radius: 25,
    ),
    PieChartSectionData(
      color: kbackgroundColor,
      value: 25,
      showTitle: false,
      radius: 20,
    ),
    PieChartSectionData(
      color: kSectionColor,
      value: 17,
      showTitle: false,
      radius: 18,
    ),
    PieChartSectionData(
      color: kCardBackgroundColor,
      value: 14,
      showTitle: false,
      radius: 15,
    ),
  ];
}