import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widget/custom_bottom_navigation.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContext() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavItem(
                imageUrl: 'assets/fi_globe.png',
                isActive: true,
              ),
              CustomBottomNavItem(
                imageUrl: 'assets/fi_book-open.png',
              ),
              CustomBottomNavItem(
                imageUrl: 'assets/fi_credit-card.png',
              ),
              CustomBottomNavItem(
                imageUrl: 'assets/fi_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContext(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
