import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:machine_test/utils/colors.dart';
import 'package:machine_test/view_models/user_viewmodel/user_viewmodel.dart';
import 'package:machine_test/views/home_screen/home_screen.dart';
import 'repository/user_repository.dart';

void main()async {
  await Hive.initFlutter();//Initialized hive database
  await Hive.openBox('payment_db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine test',
      theme: ThemeData(
        primaryColor: kblackcolor,
      ),
      home: HomeScreen(viewModel: UserViewModel(UserRepository(Dio()))),
    );
  }
}
