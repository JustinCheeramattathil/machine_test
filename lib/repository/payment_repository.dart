import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:machine_test/models/payment_model/payment_model.dart';

class PaymentRepository {
  ValueNotifier<List<PaymentModel>> paymentListNotifier = ValueNotifier([]);

  Future<int> makePayment(PaymentModel value) async {
    final paymentDB = await Hive.openBox<PaymentModel>('payment_db');
    paymentDB.put(value.id, value);
    return 0;
  }

  Future<void> fetchPayment() async {
    final paymentDB = await Hive.openBox<PaymentModel>('payment_db');
    paymentListNotifier.value.clear();
    paymentListNotifier.value.addAll(paymentDB.values);
  }
}
