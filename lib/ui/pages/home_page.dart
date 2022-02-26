import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nDian Anne Marie',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Let`s take off!',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/avatar.png',
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinantion() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 323,
              margin: EdgeInsets.only(left: defaultMargin),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage('assets/destination1.png'),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55,
                        height: 30,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              margin: EdgeInsets.only(
                                left: 5,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/star.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '4.8',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinantion(),
      ],
    );
  }
}
