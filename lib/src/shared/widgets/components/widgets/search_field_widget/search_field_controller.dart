import 'package:flutter/material.dart';

class SearchFieldController {
  final searchFieldController = TextEditingController();

  void dispose() {
    searchFieldController.dispose();
  }
}
