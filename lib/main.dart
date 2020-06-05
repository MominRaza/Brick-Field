import 'package:brickfield/add_daily_transaction.dart';
import 'package:flutter/material.dart';

import './contact_screen.dart';
import './contacts_screen.dart';
import './home_screen.dart';
import './add_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brick Field',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/contacts': (context) => ContactsScreen(),
        '/contact': (context) => ContactScreen(),
        '/add_contact': (context) => AddContact(),
        '/add_daily_transaction': (context) => AddDailyTransaction(),
      },
    );
  }
}
