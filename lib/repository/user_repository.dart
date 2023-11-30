import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:machine_test/models/user_model.dart';
import 'package:machine_test/utils/constants.dart';

class UserRepository {
  final Dio _dio;

  UserRepository(this._dio);

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get(apiendpoint);
      final data = response.data['results'] as List<dynamic>;
      log(data.toString());
      return data.map((user) => User.fromMap(user)).toList();
    } on DioException catch (error) {
      print('Error fetching users: ${error.message}');
      throw error;
    }
  }
}
