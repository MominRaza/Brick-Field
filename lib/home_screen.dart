import 'package:flutter/material.dart';

import './sliver_app_bar_delegate.dart';
import './category.dart';
import './contact.dart';
import './daily_transaction.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brick Field'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('xjhgxhj'), value: '1'),
              PopupMenuItem(child: Text('dsfgdhg'), value: '2'),
            ],
            icon: Icon(Icons.more_vert),
            onSelected: (String selectedValue) {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                margin: EdgeInsets.all(6),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(categories[index].route);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(categories[index].icon),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        categories[index].title,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              childCount: categories.length,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverAppBarDelegate(
              minHeight: 50.0,
              maxHeight: 100.0,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Text('Today'),
                    Spacer(),
                    FlatButton(
                      onPressed: () {},
                      child: Text('View all'),
                    ),
                  ],
                ),
              ),
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
