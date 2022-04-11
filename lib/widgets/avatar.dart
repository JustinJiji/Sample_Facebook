import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final bool isOnline;
  final bool isPadding;
  final bool isSmall;

  const Avatar({
    required this.image,
    this.isOnline = false,
    this.isPadding = true,
    this.isSmall = false,
  }); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: isPadding? AlignmentDirectional.bottomEnd : AlignmentDirectional.center,
      children: [
        Padding(
          padding: isPadding
              ? const EdgeInsets.only(
                  left: 10,
                  right: 5,
                )
              : const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              width: isSmall? 15 : 40,
              height: isSmall? 15 : 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        isOnline
            ? Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
