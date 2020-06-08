import 'package:flutter/material.dart';

class Category {
  String id;
  String title;
  IconData icon;
  String route;

  Category(this.id, this.title, this.icon, this.route);
}

List<Category> categories = [
  Category(
    'cat1',
    'Daily Transaction',
    Icons.attach_money,
    '/daily_transaction',
  ),
  Category(
    'cat2',
    'Sale',
    Icons.arrow_drop_down,
    '/contacts',
  ),
  Category(
    'cat3',
    'Contacts',
    Icons.contacts,
    '/contacts',
  ),
];
