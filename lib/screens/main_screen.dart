import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:korean_food/constants.dart';
import 'package:korean_food/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? Iconsax.home_wifi : Iconsax.home,
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 0 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? Iconsax.heart : Iconsax.heart_add,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 2 ? Iconsax.calendar : Iconsax.calendar_2,
                    color: currentTab == 2 ? kprimaryColor : Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Meal Plan",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 2 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 3;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? Iconsax.setting_5 : Iconsax.setting,
                    color: currentTab == 3 ? kprimaryColor : Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 3 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
