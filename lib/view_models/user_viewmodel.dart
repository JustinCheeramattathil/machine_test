import 'dart:developer';
import 'package:machine_test/models/user_model.dart';
import 'package:machine_test/repository/user_repository.dart';
import 'package:mobx/mobx.dart';

class UserViewModel with Store {
  final UserRepository _userRepository;

  @observable
  ObservableList<User> users = ObservableList<User>();

  @observable
  bool isLoading = false;

  UserViewModel(this._userRepository) {
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    isLoading = true;
    try {
      final fetchedUsers = await _userRepository.fetchUsers();
      users.clear();
      users.addAll(fetchedUsers);
      
    } on Exception catch (error) {
      log('Error fetching users: $error');
    } finally {
      isLoading = false;
    }
  }

  
}
