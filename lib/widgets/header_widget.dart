import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/responsiveness/responsive.dart';
import 'package:responsive_flutter_app/utils/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);//Responsive
    return Row(
      children: [
        if (!isDesktop) //Responsive
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.menu,
                color: kCardBackgroundColor,
                size: 40,
              ),
            ),
          ),
        Expanded(
          child: TextField(
            style: TextStyle(
              color: kGreyColor,
            ),
            decoration: InputDecoration(
              fillColor: kCardBackgroundColor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              labelStyle: TextStyle(
                color: kGreyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: kGreyColor,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: kGreyColor,
                size: 22,
              ),
            ),
          ),
        ),
        if (!isDesktop) //Responsive
          InkWell(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/ishan.jpg",
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
