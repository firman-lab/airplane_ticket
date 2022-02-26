import 'dart:async';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SpalshPage extends StatefulWidget {
  const SpalshPage({Key? key}) : super(key: key);

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(bottom: 45),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'Heal',
              style: whiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: medium, letterSpacing: 10),
            ),
            Text(
              'to the moon',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: regular,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
