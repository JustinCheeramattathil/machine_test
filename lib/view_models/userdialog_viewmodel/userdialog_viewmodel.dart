import 'package:mobx/mobx.dart';

class UserDialogStore with Store {
  @observable
  bool isUpiSelected = true;

  @observable
  bool isCashSelected = true;

  @observable
  bool isLaterSelected = false;

  @action
  void updateSwitchState(bool isUpiChecked) {
    isUpiSelected = isUpiChecked;
    isCashSelected = !isUpiChecked;
    isLaterSelected = false;
  }

  @action
  void updateSwitchsState(bool isCashChecked) {
    isCashSelected = isCashChecked;
    isUpiSelected = !isCashChecked;
    isLaterSelected = false;
  }
}
