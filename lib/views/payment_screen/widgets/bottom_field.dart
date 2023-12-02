import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';
import 'package:machine_test/views/home_screen/widgets/action_buttons.dart';

class BottomField extends StatelessWidget {
  const BottomField({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              children: [
                Text(
                  'Cash',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '\$ 0.00',
                  style: TextStyle(color: kgreycolor),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              children: [
                Text(
                  'UPI',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '\$ 0.00',
                  style: TextStyle(color: kgreycolor),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '\$ 0.00',
                  style: TextStyle(color: kgreycolor),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17),
            child: ActionButton(
                icon: Icon(
              Icons.share,
              color: kwhitecolor,
            )),
          )
        ],
      ),
    );
  }
}
