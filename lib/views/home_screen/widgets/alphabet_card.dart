import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';
//Customised Alphabet card for the BottomNavigation bar in the homescreen 
class AlphabetCard extends StatefulWidget {
  final Function? onTap;
  final String text;
  const AlphabetCard({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  State<AlphabetCard> createState() => _AlphabetCardState();
}

class _AlphabetCardState extends State<AlphabetCard> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        width: 50,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: isTapped ? kbluecolor : kwhitecolor,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isTapped ? kwhitecolor : kblackcolor,
            ),
          ),
        ),
      ),
    );
  }
}
