import 'package:responsive_flutter_app/models/health_activity_model.dart';

class HealthActivityData {
  final healthActivity = <HealthActivityModel>[
    HealthActivityModel(
      iconImage: "assets/icons/waterCycle.png",
      value: "300",
      title: "Water Level",
    ),
    HealthActivityModel(
      iconImage: "assets/icons/step.png",
      value: "7.8K",
      title: "Miles Steps",
    ),
    HealthActivityModel(
      iconImage: "assets/icons/distance.png",
      value: "340m",
      title: "Covered Distance",
    ),
    HealthActivityModel(
      iconImage: "assets/icons/sleep.png",
      value: "7h 50m",
      title: "Sleep",
    ),
  ];
}
