import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class DestinationPage extends StatelessWidget {
  final String name;
  final String city;
  final String imgUrl;
  final double rating;
  const DestinationPage(
      {Key? key,
      required this.name,
      required this.city,
      required this.imgUrl,
      this.rating = 5.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 318,
      margin: EdgeInsets.only(left: defaultMargin),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(imgUrl),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 18,
                      width: 18,
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
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  city,
                  style: greyTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
