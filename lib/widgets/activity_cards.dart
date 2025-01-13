import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/data/health_activity_data.dart';
import 'package:responsive_flutter_app/responsiveness/responsive.dart';
import 'package:responsive_flutter_app/utils/colors.dart';
import 'package:responsive_flutter_app/utils/constance.dart';
import 'package:responsive_flutter_app/widgets/custom_card.dart';

class ActivityCards extends StatelessWidget {
  const ActivityCards({super.key});

  @override
  Widget build(BuildContext context) {
    final healthData = HealthActivityData();
    final bool isMobile = Responsive.isMobile(context); //Responsive
    return GridView.builder(
      shrinkWrap: true,
      itemCount: healthData.healthActivity.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4, //Responsive
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizedBoxValue,
              ),
              Image.asset(
                healthData.healthActivity[index].iconImage,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              Text(
                healthData.healthActivity[index].value,
                style: TextStyle(
                  fontSize: 14,
                  color: kGreyColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                healthData.healthActivity[index].title,
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
