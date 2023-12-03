import 'package:mobx/mobx.dart';

// Store class managing the state for a user dialog that involves switching payment methods.
class UserDialogStore with Store {
  // Observables to track the state of different payment methods.
  @observable
  bool isUpiSelected = true; // UPI payment method selected by default.

  @observable
  bool isCashSelected = true; // Cash payment method selected by default.

  @observable
  bool isLaterSelected = false; 

  // Action method to update state based on UPI payment selection.
  @action
  void updateSwitchState(bool isUpiChecked) {
  
    isUpiSelected = isUpiChecked;
    isCashSelected = !isUpiChecked; 
    isLaterSelected = false; 
  }

  // Action method to update state based on Cash payment selection.
  @action
  void updateSwitchsState(bool isCashChecked) {
    isCashSelected = isCashChecked;
    isUpiSelected = !isCashChecked; 
    isLaterSelected = false; 
  }
}
