import 'package:airplane_ticket/ui/widget/destination_card.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 25,
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationPage(
                name: 'Bengawan Solo',
                city: 'Solo',
                imgUrl: 'assets/destination1.png',
                rating: 4.9,
              ),
              DestinationPage(
                name: 'Top Tree',
                city: 'Phuket',
                imgUrl: 'assets/destination2.png',
                rating: 4.5,
              ),
              DestinationPage(
                name: 'Menganti',
                city: 'Kebumen',
                imgUrl: 'assets/destination3.png',
                rating: 4.8,
              ),
              DestinationPage(
                name: 'Roma van Java',
                city: 'Bogor',
                imgUrl: 'assets/destination4.png',
                rating: 4.6,
              ),
              DestinationPage(
                name: 'Samp Poo Kong',
                city: 'Semarang',
                imgUrl: 'assets/destination5.png',
                rating: 4.4,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinantion(),
        newDestination(),
      ],
    );
  }
}
