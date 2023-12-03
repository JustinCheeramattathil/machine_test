import 'package:hive/hive.dart';
part 'payment_model.g.dart';

//This is the model that used to make the payment from the userdialog popup in the homescreen
@HiveType(typeId: 0)
class PaymentModel {
  @HiveField(0)
  final String id;//Holds the user id
  @HiveField(1)
  final String name;//Holds the user name
  @HiveField(2)
  final String payment;//Holds the payment method
  @HiveField(3)
  final String amount;//Holds the parment amount's value

  PaymentModel({
    required this.name,
    required this.payment,
    required this.amount,
    required this.id,
  });
}
