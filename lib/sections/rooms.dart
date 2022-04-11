import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.video_camera_back_rounded,
              color: Colors.purple,
            ),
            label: const Text(
              'Create\nRoom',
            ),
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(
                width: 1,
                color: Colors.blue,
              ),
            ),
          ),
          Avatar(
            image: messi,
            isOnline: true,
          ),
          Avatar(
            image: neymar,
            isOnline: true,
          ),
          Avatar(
            image: barca,
            isOnline: true,
          ),
          Avatar(
            image: cristiano,
            isOnline: true,
          ),
          Avatar(
            image: haaland,
            isOnline: true,
          ),
          Avatar(
            image: aguero,
            isOnline: true,
          ),
          Avatar(
            image: dimaria,
            isOnline: true,
          ),
        ],
      ),
    );
  }
}
