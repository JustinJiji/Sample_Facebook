import 'package:facebook/assets.dart';
import 'package:facebook/sections/header_button.dart';
import 'package:facebook/sections/rooms.dart';
import 'package:facebook/sections/status.dart';
import 'package:facebook/sections/stories.dart';
import 'package:facebook/sections/suggestions.dart';
import 'package:facebook/widgets/appbar_widget.dart';
import 'package:facebook/widgets/postcard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget divider = Divider(
      thickness: 8,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white10,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarWidget(
              buttonAction: () {},
              buttonIcon: Icons.search,
            ),
            AppBarWidget(
              buttonAction: () {},
              buttonIcon: Icons.chat,
            ),
          ],
        ),
        body: ListView(
          children: [
            const Status(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
             HeaderButton(
                icon1: const Icon(
                  Icons.video_camera_back_rounded,
                  color: Colors.red,
                ),
                icon1Name: const Text('Live'),
                icon2: const Icon(
                  Icons.photo_library_sharp,
                  color: Colors.green,
                ),
                icon2Name: const Text('Photo'),
                icon3: const Icon(
                  Icons.video_camera_back_rounded,
                  color: Colors.purple,
                ),
                icon3Name: const Text(
                  'Room',
                )),
            divider,
            const Rooms(),
            divider,
            const Stories(),
            divider,
            PostCard(
              avatarImage: messi,
              avatarName: 'Leo Messi',
              postedImage: messi2,
              postedTime: '1h',
              postCaption: 'Vamos 🇦🇷!!',
              like: '20M',
              comment: '399K',
              shares: '598K',
            ),
            divider,
            PostCard(
              avatarImage: aguero,
              avatarName: 'Kun Agüero',
              postedImage: aguero2,
              postedTime: '5h',
              postCaption: '🤍💙',
              like: '250K',
              comment: '95K',
              shares: '125K',
            ),
            divider,
            PostCard(
              avatarImage: haaland,
              avatarName: 'Erling Haaland',
              postedImage: haaland1,
              postedTime: '6h',
              postCaption: "We'll be back..💪",
              like: '89K',
              comment: '11K',
              shares: '26K',
            ),
            divider,
            PostCard(
              avatarImage: dimaria,
              avatarName: 'Ángel Di María',
              postedImage: dimaria2,
              postedTime: '8h',
              postCaption: '🇦🇷❤️⚽️🇦🇷⚽️❤️🇦🇷❤️⚽️',
              like: '214K',
              comment: '11K',
              shares: '92K',
            ),
            divider,
            PostCard(
              avatarImage: barca,
              avatarName: 'FC Barcelona',
              postedImage: barca2,
              postedTime: '10h',
              postCaption: 'We love our guys 🔴🔵',
              like: '550K',
              comment: '321K',
              shares: '245K',
            ),
            divider,
            const Suggestions(),
            divider,
            PostCard(
              avatarImage: cristiano,
              avatarName: 'Cristiano',
              postedImage: cristiano2,
              postedTime: '16h',
              postCaption: '👀',
              like: '870K',
              comment: '432K',
              shares: '222K',
            ),
            divider,
            PostCard(
              avatarImage: neymar,
              avatarName: 'Neymar Jr.',
              postedImage: neymar2,
              postedTime: '1d',
              postCaption: '🔥🔥🔥',
              like: '557K',
              comment: '147K',
              shares: '123K',
            ),
            divider,
          ],
        ),
      ),
    );
  }
}
