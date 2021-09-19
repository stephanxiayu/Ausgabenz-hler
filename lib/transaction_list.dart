import 'package:ausgabenplaner/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: transactions.isEmpty
          ? Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mach deinen Eintrag",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 300,
                    width: 300,
                    child: Lottie.network(
                        "https://assets5.lottiefiles.com/packages/lf20_ocib98vu.json")),
              ],
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 9,
                  child: Row(children: [
                    Container(
                      height: 40,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Center(
                        child: Text(
                          '${transactions[index].amount.toStringAsFixed(2)}\€',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transactions[index].title,
                          style: TextStyle(color: Colors.teal, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            DateFormat('dd.MM.yyyy')
                                .format(transactions[index].date),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ]),
                );
              },
            ),
    );
  }
}
