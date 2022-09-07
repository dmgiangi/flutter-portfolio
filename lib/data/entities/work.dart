import 'package:flutter/material.dart';

class Work {
  final String _category;
  final String _title;
  final String _description;
  final String _link;
  final List<IconData> _tools;

  Work(
      {required tools,
      required category,
      required title,
      required description,
      required link})
      : _tools = tools,
        _category = category,
        _title = title,
        _description = description,
        _link = link;

  String get title => _title;

  String get category => _category;

  String get description => _description;

  String get link => _link;

  List<IconData> get tools => _tools;
}
