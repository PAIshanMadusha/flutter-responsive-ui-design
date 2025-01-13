import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/data/scheduled_data.dart';
import 'package:responsive_flutter_app/utils/colors.dart';
import 'package:responsive_flutter_app/utils/constance.dart';
import 'package:responsive_flutter_app/widgets/custom_card.dart';

class ScheduledWidget extends StatelessWidget {
  const ScheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduledData = ScheduledData();
    return Column(
      children: [
        Text(
          "Scheduled List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kGreyColor,
          ),
        ),
        SizedBox(
          height: sizedBoxValue,
        ),
        for (var index = 0;
            index < scheduledData.scheduledTasks.length;
            index++)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: CustomCard(
              color: kSectionColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        scheduledData.scheduledTasks[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: kGreyColor,
                        ),
                      ),
                      Text(
                        scheduledData.scheduledTasks[index].date,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.alarm),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
