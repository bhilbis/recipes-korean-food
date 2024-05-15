import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:korean_food/widgets/home_appbar.dart';
import 'package:korean_food/widgets/home_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding:
                  EdgeInsets.only(top: 25, bottom: 15, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeAppbar(),
                  const SizedBox(
                    height: 20,
                  ),
                  HomeSearchBar(),
                ],
              )),
        ),
      ),
    );
  }
}
