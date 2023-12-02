import 'package:flutter/material.dart';

class BottomField extends StatelessWidget {
  const BottomField({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Text('Cash'),
              Text('\$ 0.00'),
            ],
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            children: [
              Text('UPI'),
              Text('\$ 0.00'),
            ],
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            children: [
              Text('Total'),
              Text('\$ 0.00'),
            ],
          ),
        ],
      ),
    );
  }
}
