import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:machine_test/models/payment_model/payment_model.dart';
import 'package:machine_test/repository/payment_repository.dart';
part 'payment_viewmodel.g.dart';

class PaymentViewModel = _PaymentViewModel with _$PaymentViewModel;

abstract class _PaymentViewModel with Store {
  final PaymentRepository _paymentRepository = PaymentRepository();

  @observable
  ObservableList<PaymentModel> paymentList = ObservableList<PaymentModel>();

  @observable
  bool isLoading = false;

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
