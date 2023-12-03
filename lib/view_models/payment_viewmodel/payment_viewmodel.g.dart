// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaymentViewModel on _PaymentViewModel, Store {
  late final _$paymentListAtom =
      Atom(name: '_PaymentViewModel.paymentList', context: context);

  @override
  ObservableList<PaymentModel> get paymentList {
    _$paymentListAtom.reportRead();
    return super.paymentList;
  }

  @override
  set paymentList(ObservableList<PaymentModel> value) {
    _$paymentListAtom.reportWrite(value, super.paymentList, () {
      super.paymentList = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_PaymentViewModel.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$makePaymentAsyncAction =
      AsyncAction('_PaymentViewModel.makePayment', context: context);

  @override
  Future<int> makePayment(PaymentModel paymentModel) {
    return _$makePaymentAsyncAction.run(() => super.makePayment(paymentModel));
  }

  late final _$fetchPaymentsAsyncAction =
      AsyncAction('_PaymentViewModel.fetchPayments', context: context);

  @override
  Future<void> fetchPayments() {
    return _$fetchPaymentsAsyncAction.run(() => super.fetchPayments());
  }

  @override
  String toString() {
    return '''
paymentList: ${paymentList},
isLoading: ${isLoading}
    ''';
  }
}
