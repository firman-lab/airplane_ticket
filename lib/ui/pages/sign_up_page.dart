import 'package:airplane_ticket/ui/widget/custom_primary_button.dart';
import 'package:airplane_ticket/ui/widget/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join with us get\nyour special own',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget fullNamelInput() {
        return const CustomTextFromField(
          title: 'Full Name',
          hintText: 'your name',
        );
      }

      Widget emailInput() {
        return const CustomTextFromField(
          title: 'Email',
          hintText: 'example@gmail.com',
        );
      }

      Widget passwordInput() {
        return const CustomTextFromField(
          title: 'Password',
          hintText: 'password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomTextFromField(
          title: 'Hobby',
          hintText: 'food marathon..',
        );
      }

      Widget submitButton() {
        return CustomPrimaryButton(
          text: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            fullNamelInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 40,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
