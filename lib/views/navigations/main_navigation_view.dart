import 'package:flutter/material.dart';
import 'package:slicing/views/navigations/main_navigation_controller.dart';
import 'package:slicing/views/navigations/qnavigation.dart';
// import 'package:slicing/views/pages/booking_page.dart';
import 'package:slicing/views/pages/home_page.dart';
import 'package:slicing/views/pages/order_page.dart';
import 'package:slicing/views/pages/profile_page.dart';

class MainNavigationView extends StatefulWidget {
  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return QNavigation(
      pages: [
        Home(),
        Order(),
        ProfilePage(),
      ],
      menus: [
        NavigationMenu(
          icon: Icons.home,
          label: "Home",
        ),
        NavigationMenu(
          icon: Icons.card_membership,
          label: "Booking",
        ),
        NavigationMenu(
          icon: Icons.person,
          label: "Profile",
        ),
      ],
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
