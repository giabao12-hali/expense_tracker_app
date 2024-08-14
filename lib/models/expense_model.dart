import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ExpenseModel {
  ExpenseModel({required this.title, required this.amount, required this.date}) : id = uuid.v4();

  // khai báo properties
  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
