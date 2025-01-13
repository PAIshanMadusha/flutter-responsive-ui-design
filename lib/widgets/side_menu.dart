import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/data/side_menu_data.dart';
import 'package:responsive_flutter_app/utils/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sideMenuData = SideMenuData();
  //Index
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 60,
      ),
      color: kCardBackgroundColor,
      child: ListView.builder(
          itemCount: sideMenuData.sideMenu.length,
          itemBuilder: (context, index) {
            return _sideMenuList(sideMenuData, index);
          }),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenudata, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8,
          ),
          color: selectedIndex == index ? const Color.fromARGB(255, 122, 106, 214) : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenudata.sideMenu[index].icon,
                color: selectedIndex == index ? kBlackColor : kGreyColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                sideMenudata.sideMenu[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? kBlackColor : kGreyColor, fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
