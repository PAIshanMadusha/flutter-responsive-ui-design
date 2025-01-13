import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/responsiveness/responsive.dart';
import 'package:responsive_flutter_app/widgets/main_menu.dart';
import 'package:responsive_flutter_app/widgets/right_side_menu.dart';
import 'package:responsive_flutter_app/widgets/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context); //Responsive
    return Scaffold(
      drawer: !isDesktop //Responsive
          ? const SizedBox(
              width: 250,
              child: SideMenu(),
            )
          : null,
      endDrawer: !isDesktop ? SizedBox( //Responsive
        width: MediaQuery.of(context).size.width * 0.8,
        child: RightSideMenu(),
      ) : null,    
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              //Side Menu
              Expanded( //Responsive
                flex: 2,
                child: SizedBox(
                  child: SideMenu(),
                ),
              ),
            //Main Munu
            Expanded( //Responsive
              flex: 7,
              child: SizedBox(
                child: MainMenu(),
              ),
            ),
            if (isDesktop)
              //Right Side Menu
              Expanded( //Responsive
                flex: 3,
                child: SizedBox(
                  child: RightSideMenu(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
