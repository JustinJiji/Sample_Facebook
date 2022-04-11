import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/story_card.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            isIcon: true,
            cardImage: messi,
            imageOrIcon: const Icon(
              Icons.add,
              size: 30,
              color: Colors.blue,
            ),
            text: 'Add your Story',
          ),
          StoryCard(
            isIcon: false,
            cardImage: neymar1,
            imageOrIcon: Avatar(
              image: neymar,
              isPadding: false,
            ),
            text: 'Neymar Jr.',
          ),
          StoryCard(
            isIcon: false,
            cardImage: barca1,
            imageOrIcon: Avatar(
              image: barca,
              isPadding: false,
            ),
            text: 'FC Barcelona',
          ),
          StoryCard(
            isIcon: false,
            cardImage: dimaria1,
            imageOrIcon: Avatar(
              image: dimaria,
              isPadding: false,
            ),
            text: 'Ángel Di María',
          ),
          StoryCard(
            isIcon: false,
            cardImage: haaland2,
            imageOrIcon: Avatar(
              image: haaland,
              isPadding: false,
            ),
            text: 'Erling Haaland',
          ),
          StoryCard(
            isIcon: false,
            cardImage: cristiano1,
            imageOrIcon: Avatar(
              image: cristiano,
              isPadding: false,
            ),
            text: 'Cristiano',
          ),
          StoryCard(
            isIcon: false,
            cardImage: aguero1,
            imageOrIcon: Avatar(
              image: aguero,
              isPadding: false,
            ),
            text: 'Kun Agüero',
          ),
        ],
      ),
    );
  }
}
