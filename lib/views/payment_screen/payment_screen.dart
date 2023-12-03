import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';
import 'package:machine_test/view_models/user_viewmodel/user_viewmodel.dart';
import 'package:machine_test/views/home_screen/home_screen.dart';
import 'package:machine_test/views/payment_screen/widgets/bottom_field.dart';
//Payment screen displays added payment details
class PaymentScreen extends StatelessWidget {
  final UserViewModel viewModel;
  const PaymentScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen(
                        viewModel: viewModel,
                      )),
              (Route<dynamic> route) => false,
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: kwhitecolor,
        title: const Text(
          'TODO',
          style: TextStyle(color: kblackcolor),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true, // Show back arrow
        iconTheme:
            const IconThemeData(color: kblackcolor), // Set back arrow color
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Clear',
                style:
                    TextStyle(color: kbluecolor, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
        elevation: 2,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(
              'Payments',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              width: 85,
            ),
            Row(
              children: [
                Text(
                  'Attendance',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:const  BottomField(),
    );
  }
}
