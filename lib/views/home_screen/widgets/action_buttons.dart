import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';

class ActionButton extends StatelessWidget {
  final Icon icon;
  final Function()? onTap;

  const ActionButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56.0,
        height: 56.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kbluecolor,
        ),
        child: Center(
          child: icon, 
          // Use the provided icon here
        ),
      ),
    );
  }
}
