import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:machine_test/models/user_model/user_model.dart';
import 'package:machine_test/utils/colors.dart';
import 'package:machine_test/view_models/user_viewmodel/user_viewmodel.dart';
import 'package:machine_test/views/home_screen/widgets/action_buttons.dart';
import 'package:machine_test/views/home_screen/widgets/user_popup.dart';
import 'package:machine_test/views/home_screen/widgets/visitor_popup.dart';
import 'package:machine_test/views/home_screen/widgets/custom_navigationbar.dart';
import 'package:machine_test/views/home_screen/widgets/custom_user_card.dart';
import 'package:machine_test/views/payment_screen/payment_screen.dart';

class HomeScreen extends StatelessWidget {
  final UserViewModel viewModel;
  const HomeScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    void _showAlertDialog(BuildContext context, User user) {
      CustomUserDialog.showAlertDialog(
          context, user); // Call the visitor popup from the separate class
    }

    void _showDialog(BuildContext context) {
      CustomVisitorDialog.showDialog(
          context); // Call the sponsor popup from the separate class
    }

    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        backgroundColor: kwhitecolor,
        title: const Text(
          'TODO',
          style: TextStyle(color: kblackcolor),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Observer(builder: (_) {
              return GridView.builder(
                itemCount: viewModel.users.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                ),
                itemBuilder: (context, index) {
                  final user = viewModel.users[index];
                  return InkWell(
                    onTap: () => _showAlertDialog(context, user),
                    child: CustomUserCard(
                      imageUrl: user.imageUrl,
                      text: '${user.first} ${user.last}',
                    ),
                  );
                },
              );
            }),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 180,
              right: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ActionButton(
                    icon: const Icon(
                      Icons.people,
                      color: kwhitecolor,
                    ),
                    onTap: () => _showDialog(context),
                  ),
                  const SizedBox(height: 16),
                  ActionButton(
                    icon: const Icon(
                      Icons.currency_exchange_sharp,
                      color: kwhitecolor,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => PaymentScreen(
                                  viewModel: viewModel,
                                )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
