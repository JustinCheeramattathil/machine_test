import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/view_models/user_viewmodel.dart';
import 'package:machine_test/views/home_screen/home_screen.dart';
import 'repository/user_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Machine test',
      home: HomeScreen(viewModel: UserViewModel(UserRepository(Dio()))),
    );
  }
}
