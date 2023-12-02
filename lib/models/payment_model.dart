import 'package:hive/hive.dart';
part 'payment_model.g.dart';
@HiveType(typeId: 0)
class PaymentModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String payment;
  @HiveField(3)
  final String amount;

  PaymentModel({
    required this.name,
    required this.payment,
    required this.amount,
    required this.id,
  });
}
