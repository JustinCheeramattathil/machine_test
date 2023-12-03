import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:machine_test/models/payment_model/payment_model.dart';

// Repository class responsible for handling payment-related operations.
class PaymentRepository {
  // ValueNotifier to notify listeners about changes in the payment list.
  ValueNotifier<List<PaymentModel>> paymentListNotifier = ValueNotifier([]);

  // Method to add a payment to the database.
  Future<int> makePayment(PaymentModel value) async {
    final paymentDB = await Hive.openBox<PaymentModel>('payment_db');
    paymentDB.put(value.id, value);
    return 0; 
  }

  // Method to fetch payments from the database.
  Future<void> fetchPayment() async {
    final paymentDB = await Hive.openBox<PaymentModel>('payment_db');
    paymentListNotifier.value.clear();
    paymentListNotifier.value.addAll(paymentDB.values);
  }
}
