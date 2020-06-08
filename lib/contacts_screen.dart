import 'package:flutter/material.dart';

import 'contact.dart';
import 'sliver_app_bar_delegate.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverAppBarDelegate(
              minHeight: 50.0,
              maxHeight: 80.0,
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Chip(
                      label: Text('All'),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  itemCount: 3,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  title: Text(
                      '${contacts[index].name}, ${contacts[index].address}'),
                  subtitle: Text(contacts[index].number),
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('/contact', arguments: contacts[index].id);
                  },
                ),
              ),
              childCount: contacts.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/add_contact');
        },
      ),
    );
  }
}
