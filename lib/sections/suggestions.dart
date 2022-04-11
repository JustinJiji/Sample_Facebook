import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'People You May Know',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 1),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
            bottom: 10,
          ),
          height: 300,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(
                cardImage: barca,
                cardText: 'FC Barcelona',
              ),
              SuggestionCard(
                cardImage: haaland,
                cardText: 'Erling Haaland',
              ),
              SuggestionCard(
                cardImage: dimaria,
                cardText: 'Di maria',
              ),
              SuggestionCard(
                cardImage: messi,
                cardText: 'Leo Messi',
              ),
              SuggestionCard(
                cardImage: messi,
                cardText: 'Leo Messi',
              ),
            ],
          ),
        )
      ],
    );
  }
}
