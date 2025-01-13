import 'package:flutter/material.dart';
import 'package:responsive_flutter_app/models/side_menu_model.dart';

class SideMenuData {

  final sideMenu = <SideMenuModel> [
    SideMenuModel(icon: Icons.home, title: "Dashboard"),
    SideMenuModel(icon: Icons.person, title: "Profile"),
    SideMenuModel(icon: Icons.run_circle, title: "Exercise"),
    SideMenuModel(icon: Icons.settings, title: "Setting"),
    SideMenuModel(icon: Icons.history, title: "History"),
    SideMenuModel(icon: Icons.logout, title: "SignOut"),
  ];
}