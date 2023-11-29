import 'package:flutter/material.dart';
import 'package:machine_test/utils/colors.dart';
import 'package:machine_test/views/widgets/custom_navigationbar.dart';
import 'package:machine_test/views/widgets/custom_user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
              ),
              itemBuilder: (
                context,
                index,
              ) {
                return CustomUserCard(
                  onTap: () {},
                  imageUrl:
                      'https://i.insider.com/6554a3ac4ca513d824299fdf?width=700',
                  text: 'JustinThomas',
                );
              },
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 180,
              right: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.people),
                    backgroundColor: kbluecolor,
                  ),
                  const SizedBox(height: 16),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.currency_exchange_outlined),
                    backgroundColor: kbluecolor,
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
