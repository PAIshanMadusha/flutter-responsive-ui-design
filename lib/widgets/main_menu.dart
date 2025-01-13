import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/utils/colors.dart';
import 'package:responsive_flutter_app/utils/constance.dart';
import 'package:responsive_flutter_app/widgets/activity_cards.dart';
import 'package:responsive_flutter_app/widgets/bar_graph_card.dart';
import 'package:responsive_flutter_app/widgets/header_widget.dart';
import 'package:responsive_flutter_app/widgets/line_chart.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSectionColor, kBlackColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding,
          ),
          child: Column(
            children: [
              SizedBox(
                height: sizedBoxValue,
              ),
              HeaderWidget(),
              SizedBox(
                height: sizedBoxValue,
              ),
              ActivityCards(),
              SizedBox(
                height: sizedBoxValue,
              ),
              LineChartCard(),
              SizedBox(
                height: sizedBoxValue,
              ),
              BarGraphCard(),
              SizedBox(
                height: sizedBoxValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
