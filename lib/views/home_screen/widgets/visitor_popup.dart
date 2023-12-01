import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';

class CustomVisitorDialog {
  static void showDialog(BuildContext context) {
    final TextEditingController visitorcontroller = TextEditingController();
    final TextEditingController sponsorcontroller = TextEditingController();
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          const Text(
              'Enter Visitor Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                const SizedBox(height: 16),
                CupertinoTextField(
                  controller: visitorcontroller,
                  prefix: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.person)),
                  keyboardType: TextInputType.text,
                  decoration: BoxDecoration(
                    border: Border.all(color: kgreycolor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 16),
                CupertinoTextField(
                  controller: sponsorcontroller,
                  prefix: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.person)),
                  keyboardType: TextInputType.text,
                  decoration: BoxDecoration(
                    border: Border.all(color: kgreycolor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel', style: TextStyle(color: kbluecolor)),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Done',
              style: TextStyle(color: kbluecolor),
            ),
          ),
        ],
      ),
    );
  }
}
