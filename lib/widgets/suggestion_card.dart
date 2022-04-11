import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String cardText;
  final String cardImage;

  const SuggestionCard({
    required this.cardImage,
    required this.cardText,
  });

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(
      height: 10,
    );
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
        left: 2,
      ),
      height: 280,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              cardImage,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          sizedBox,
          Text(
            cardText,
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey[800],
            ),
          ),
          sizedBox,
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  icon: const Icon(
                    Icons.person_add_alt_1,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {},
                  label: const Text(
                    'Add Friend',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Remove',
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
