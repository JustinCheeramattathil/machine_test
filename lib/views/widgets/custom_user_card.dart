import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';

class CustomUserCard extends StatelessWidget {
  final Function? onTap;
  final String imageUrl;
  final String text;
  const CustomUserCard(
      {super.key,
      required this.onTap,
      required this.imageUrl,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: kwhitecolor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
