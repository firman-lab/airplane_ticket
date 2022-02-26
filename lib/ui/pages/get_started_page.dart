import 'package:airplane_ticket/ui/widget/custom_primary_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bg_start.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Follow Questions!',
                    style: whiteTextStyle.copyWith(
                      fontSize: 27,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'There is only one way to get a quality life, nice food and take a holiday.',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  CustomPrimaryButton(
                    text: 'Get Started',
                    width: 220,
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
