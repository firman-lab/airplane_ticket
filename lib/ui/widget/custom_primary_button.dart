import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final Function onPressed;
  const CustomPrimaryButton(
      {Key? key,
      required this.text,
      this.width = double.infinity,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: width,
      height: 55,
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 70,
      ),
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      ),
    );
    return container;
  }
}
