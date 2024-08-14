import 'package:uuid/uuid.dart';

const uuid = Uuid();

// khai báo enum
enum Category { food, travel, leisure, work }

class ExpenseModel {
  // khai báo constructor
  ExpenseModel({required this.title, required this.amount, required this.date, required this.categories})
      : id = uuid.v4();

  // khai báo properties
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category categories;
}
