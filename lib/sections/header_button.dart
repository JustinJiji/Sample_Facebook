import 'package:flutter/material.dart';




class HeaderButton extends StatelessWidget {
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;
  final Text icon1Name;
  final Text icon2Name;
  final Text icon3Name;



   HeaderButton({
    required this.icon1,
    required this.icon1Name,
    required this.icon2,
    required this.icon2Name,
    required this.icon3,
    required this.icon3Name,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: icon1,
            label: icon1Name,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
            endIndent: 2,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: icon2,
            label: icon2Name,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          TextButton.icon(
            onPressed: () {},
            icon: icon3,
            label: icon3Name,
          ),
        ],
      ),
    );
  }
}
