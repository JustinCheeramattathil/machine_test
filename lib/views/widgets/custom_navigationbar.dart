import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 26,
          separatorBuilder: (_, __) => const SizedBox(width: 10),
          itemBuilder: (context, index) {
            String alphabet = String.fromCharCode(65 + index);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kwhitecolor),
                child: Center(
                  child: Text(
                    alphabet,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kblackcolor,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
