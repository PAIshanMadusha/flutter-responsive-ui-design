import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/pages/home_page.dart';
import 'package:responsive_flutter_app/utils/colors.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundColor,
      ),
      home: HomePage(),
    );
  }
}
