import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/responsiveness/responsive.dart';
import 'package:responsive_flutter_app/utils/colors.dart';
import 'package:responsive_flutter_app/utils/constance.dart';
import 'package:responsive_flutter_app/widgets/pie_chart_card.dart';
import 'package:responsive_flutter_app/widgets/scheduled_widget.dart';
import 'package:responsive_flutter_app/widgets/summery_details.dart';

class RightSideMenu extends StatefulWidget {
  const RightSideMenu({super.key});

  @override
  State<RightSideMenu> createState() => _RightSideMenuState();
}

class _RightSideMenuState extends State<RightSideMenu> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);//Responsive
    return SingleChildScrollView(
      child: Container(
        color: isDesktop ? kCardBackgroundColor : kPrimaryColor, //Responsive
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              PieChartCard(),
              SizedBox(
                height: sizedBoxValue,
              ),
              Text(
                "Summery",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kGreyColor,
                 ),
              ),
              SizedBox(
                height: sizedBoxValue,
              ),
              SummeryDetails(),
              SizedBox(
                height: sizedBoxValue,
              ),
              ScheduledWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
