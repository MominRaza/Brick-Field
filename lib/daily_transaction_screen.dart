import 'package:flutter/material.dart';

import './contact.dart';
import './daily_transaction.dart';

class DailyTransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Transaction'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Card(
                  child: ListTile(
                    title: Text('Previes Amount'),
                    trailing: Text('\$ 136400'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Today Total Income'),
                    trailing: Text('\$ 37900'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Today Total Income'),
                    trailing: Text('\$ 37900'),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor:
                        (dailyTransactiions[index].transactionType == 'Debit')
                            ? Colors.red
                            : Colors.green,
                    child: Icon(
                      (dailyTransactiions[index].transactionType == 'Debit')
                          ? Icons.call_received
                          : Icons.call_made,
                    ),
                  ),
                  title: Text(
                      '${contacts.firstWhere((contact) => contact.id == dailyTransactiions[index].userId).name}, ${contacts.firstWhere((contact) => contact.id == dailyTransactiions[index].userId).address}'),
                  subtitle: Text(dailyTransactiions[index].timeDate),
                  trailing: Text('\$ ${dailyTransactiions[index].amount}'),
                ),
              ),
              childCount: dailyTransactiions.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () =>
            Navigator.of(context).pushNamed('/add_daily_transaction'),
      ),
    );
  }
}
