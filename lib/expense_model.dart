import 'package:intl/intl.dart';

class ExpenseModel {
  String description;
  int amount;
  String date;
  bool isIncome;

  ExpenseModel({required this.description,
    required this.amount,
    required this.date,
    required this.isIncome
  });
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'amount': amount,
      'date': date,
      'isIncome': isIncome,
    };
  }
  factory ExpenseModel.fromJson(Map<String, dynamic> json) {
    return ExpenseModel(
      description: json['description'],
      amount: json['amount'],
      date: json['date'],
      isIncome: json['isIncome'],
    );
  }

}