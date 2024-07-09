import 'package:expense_tracker/expense_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final ExpenseModel expenseModel;
  const Item({
    super.key,
    required this.expenseModel,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding:  EdgeInsets.all(6.0),
        decoration:  BoxDecoration(
          color: CupertinoColors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              expenseModel.description,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '\$ ${expenseModel.isIncome?expenseModel.amount:-expenseModel.amount}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: expenseModel.isIncome ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
