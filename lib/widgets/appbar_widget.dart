import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {

  final IconData buttonIcon;
  final void Function() buttonAction;

  AppBarWidget({required this.buttonIcon,required this.buttonAction,});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(
        left: 10,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: Colors.black,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
