import 'package:facebook/sections/like_comment_button.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';


class PostCard extends StatelessWidget {
  final String postedImage;
  final String avatarImage;
  final String avatarName;
  final String postedTime;
  final String postCaption;
  final String shares;
  final String comment;
  final String like;

  const PostCard({
    required this.postedImage,
    required this.avatarImage,
    required this.avatarName,
    required this.postedTime,
    required this.postCaption,
    required this.shares,
    required this.comment,
    required this.like,
  });


  @override
  Widget build(BuildContext context) {
    var sizedBoxWidth = const SizedBox(
      width: 5,
    );
    var sizedBoxHeight = const SizedBox(
      height: 5,
    );

    return Column(
      children: [
        header(sizedBoxWidth),
        sizedBoxHeight,
        caption(sizedBoxWidth),
        sizedBoxHeight,
        postImage(),
        sizedBoxHeight,
        likeCommentShare(sizedBoxWidth),
        Divider(
          thickness: 1,
          color: Colors.grey[350],
        ),
        LikeCommentButton(),
      ],
    );
  }

//Like Comment and Share details
  Row likeCommentShare(SizedBox sizedBoxWidth) {
    return Row(
      children: [
        sizedBoxWidth,
        Container(
          height: 15,
          width: 15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: const Icon(
            Icons.thumb_up,
            size: 10,
            color: Colors.white,
          ),
        ),
        sizedBoxWidth,
        Text(
          like,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
        const Spacer(),
        Text(
          '${comment} Comments',
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
        sizedBoxWidth,
        sizedBoxWidth,
        Text(
          '${shares} Shares',
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
        Avatar(
          image: avatarImage,
          isSmall: true,
        ),
        Icon(
          Icons.arrow_drop_down,
          color: Colors.grey[850],
          size: 16,
        ),
        sizedBoxWidth,
      ],
    );
  }

// Post Image
  Image postImage() {
    return Image.asset(
      postedImage,
      scale: 0.1,
      fit: BoxFit.cover,
    );
  }

// Post Header
  ListTile header(SizedBox sizedBoxWidth) {
    return ListTile(
      leading: Avatar(
        image: avatarImage,
      ),
      title: Row(
        children: [
          Text(
            avatarName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          sizedBoxWidth,
          const Icon(
            Icons.verified,
            color: Colors.blue,
            size: 15,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            postedTime,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 13,
            ),
          ),
          sizedBoxWidth,
          Icon(
            Icons.public,
            color: Colors.grey[600],
            size: 13,
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.more_horiz,
          color: Colors.black,
        ),
        onPressed: () {},
        alignment: Alignment.centerRight,
      ),
    );
  }

//Post Caption
  Row caption(SizedBox sizedBoxWidth) {
    return Row(
      children: [
        sizedBoxWidth,
        sizedBoxWidth,
        sizedBoxWidth,
        Text(
          postCaption,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
