import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:machine_test/models/user_model/user_model.dart';
import 'package:machine_test/utils/colors.dart';
import 'package:machine_test/view_models/userdialog_viewmodel/userdialog_viewmodel.dart';
//Cupertino dialog for the user payment in the homescreen
class CustomUserDialog {
  static final UserDialogStore userDialogStore = UserDialogStore();
  static void showAlertDialog(BuildContext context, User user) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final TextEditingController textcontroller =
        TextEditingController(text: '2500');
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: CircleAvatar(
          backgroundImage: NetworkImage(user.imageUrl),
        ),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${user.first} ${user.last}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      const Text(
                        'UPI',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Spacer(),
                      Observer(
                        builder: (_) {
                          return CupertinoSwitch(
                            value: userDialogStore.isUpiSelected,
                            onChanged: (bool value) {
                              userDialogStore.updateSwitchState(value);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      const Text(
                        'CASH',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Spacer(),
                      Observer(
                        builder: (_) {
                          return CupertinoSwitch(
                            value: userDialogStore.isCashSelected,
                            onChanged: (bool value) {
                              userDialogStore.updateSwitchsState(value);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      const Text(
                        'LATER',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                        value: false,
                        onChanged: (bool value) {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                controller: textcontroller,
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '\$',
                    style: TextStyle(fontSize: 20, color: kgreycolor),
                  ),
                ),
                keyboardType: TextInputType.number,
                decoration: BoxDecoration(
                  border: Border.all(color: kgreycolor),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
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
