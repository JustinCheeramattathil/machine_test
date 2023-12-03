import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:machine_test/models/payment_model/payment_model.dart';
import 'package:machine_test/repository/payment_repository.dart';
// Part file linking to the generated code for the PaymentViewModel.
part 'payment_viewmodel.g.dart';

// Class representing the ViewModel for managing Payment related functionality.
class PaymentViewModel = _PaymentViewModel with _$PaymentViewModel;

// The actual implementation of the PaymentViewModel, using the generated Store mixin(Mobx).
//The store mixin is a part of Mobx StateManagement
abstract class _PaymentViewModel with Store {
  final PaymentRepository _paymentRepository = PaymentRepository();
  // ObservableList to store PaymentModel objects.
  @observable
  ObservableList<PaymentModel> paymentList = ObservableList<PaymentModel>();
// Observable boolean to track loading state.
  @observable
  bool isLoading = false;
  // Action method to make a payment.
  @action
  Future<int> makePayment(PaymentModel paymentModel) async {
    isLoading = true;
    try {
      final paymentId = await _paymentRepository.makePayment(paymentModel);
      paymentList.add(paymentModel);
      return paymentId;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return 0;
    } finally {
      isLoading = false;
    }
  }

// Action method to fetch a payment.
  @action
  Future<void> fetchPayments() async {
    isLoading = true;
    try {
      await _paymentRepository.fetchPayment();
      paymentList.clear();
      paymentList.addAll(_paymentRepository.paymentListNotifier.value);
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    } finally {
      isLoading = false;
    }
  }
}
