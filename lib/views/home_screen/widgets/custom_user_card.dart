import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';

class CustomUserCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  const CustomUserCard({super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kwhitecolor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
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
    );
  }
}
