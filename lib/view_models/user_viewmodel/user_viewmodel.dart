import 'dart:developer';
import 'package:machine_test/models/user_model/user_model.dart';
import 'package:machine_test/repository/user_repository.dart';
import 'package:mobx/mobx.dart';
//Here is the implementation of UserViewModel with the store mixin(Mobx)
// Class representing the ViewModel for managing User-related functionality.
class UserViewModel with Store {
  final UserRepository _userRepository;
  // ObservableList to store User objects.
  @observable
  ObservableList<User> users = ObservableList<User>();
  // Observable boolean to track loading state.
  @observable
  bool isLoading = false;

    // Constructor to initialize UserViewModel with UserRepository and fetch users
  UserViewModel(this._userRepository) {
    fetchUsers();
  }
//Method to fetch user data
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
