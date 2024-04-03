import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WidgetBookmarkerService {
  WidgetBookmarkerService({
    required BuildContext context,
    required SharedPreferences sharedPreferences,
  })  : _context = context,
        _sharedPreferences = sharedPreferences;

  final BuildContext _context;
  final SharedPreferences _sharedPreferences;

  static const key = 'saved_widgets';
  String _snackBarMessage = '';

  bool toggleWidgetState(String widgetName) {
    List<String>? savedWidgets = _sharedPreferences.getStringList(key);
    bool saved = true;

    if (savedWidgets == null || !savedWidgets.contains(widgetName)) {
      savedWidgets = _saveWidget(widgetName, savedWidgets);
    } else {
      savedWidgets = _removeWidget(widgetName, savedWidgets);
      saved = false;
    }

    _sharedPreferences.setStringList(
      key,
      savedWidgets,
    );

    _showSnackbar();

    return saved;
  }

  List<String> _saveWidget(String widgetName, List<String>? savedWidgets) {
    _snackBarMessage = 'Widget saved';

    if (savedWidgets == null) {
      savedWidgets = [widgetName];
    } else {
      savedWidgets.add(widgetName);
    }

    return savedWidgets;
  }

  List<String> _removeWidget(String widgetName, List<String> savedWidgets) {
    _snackBarMessage = 'Widget removed';

    final items = <String>[];
    for (String savedWidget in savedWidgets) {
      if (savedWidget != widgetName) {
        items.add(savedWidget);
      }
    }

    return items;
  }

  void _showSnackbar() {
    ScaffoldMessenger.of(_context).showSnackBar(
      SnackBar(
        content: Text(_snackBarMessage),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            ScaffoldMessenger.of(_context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
