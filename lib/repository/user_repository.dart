import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:machine_test/models/user_model/user_model.dart';
import 'package:machine_test/utils/constants.dart';


// Repository class responsible for handling user-related operations.
class UserRepository {
  final Dio _dio;// Dio instance for making network requests.
  
    // Constructor to initialize the UserRepository with a Dio instance.
  UserRepository(this._dio);

 // Method to fetch a list of users from an API endpoint.
  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get(apiendpoint);
      final data = response.data['results'] as List<dynamic>;
      return data.map((user) => User.fromMap(user)).toList();
    } on DioException catch (error) {
      if (kDebugMode) {
        // Print the error message in debug mode for debugging purposes.
        print('Error fetching users: ${error.message}');
      }
      rethrow;
    }
  }
}
