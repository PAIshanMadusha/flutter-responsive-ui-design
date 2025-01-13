import 'package:flutter/material.dart';

class Responsive {
  //Mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  //Tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  //Desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
