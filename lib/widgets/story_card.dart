import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String cardImage;
  final Widget imageOrIcon;
  final String text;
  final bool isIcon;

  const StoryCard({
    required this.cardImage,
    required this.text,
    required this.imageOrIcon,
    required this.isIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 140,
          margin: const EdgeInsets.only(
            left: 6,
            right: 2,
            top: 6,
            bottom: 6,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cardImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          top: 13,
          left: 13,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                height: isIcon ? 44 : 40,
                width: isIcon ? 44 : 40,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: imageOrIcon,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 12,
          left: 17,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
