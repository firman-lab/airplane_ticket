import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const CustomBottomNavItem({
    Key? key,
    required this.imageUrl,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 3,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kTransparantColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
