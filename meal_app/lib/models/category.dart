import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    @required this.id = 'c1',
    @required this.title = 'italien',
    this.color = Colors.orange,
  });
}
