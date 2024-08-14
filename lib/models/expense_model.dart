import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

// khai báo enum
enum Category { food, travel, leisure, work }

// khai báo map category tương ứng với các icon
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}
