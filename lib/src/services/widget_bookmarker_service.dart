import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WidgetBookmarkerService {
  WidgetBookmarkerService({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences {
    getWidgets();
  }

  final SharedPreferences _sharedPreferences;

  late List<String> savedWidgets;

  static const key = 'saved_widgets';
  String _snackBarMessage = '';

  void getWidgets() {
    savedWidgets = _sharedPreferences.getStringList(key) ?? [];
  }

  bool contains(String widgetName) {
    return savedWidgets.contains(widgetName);
  }

  bool toggleWidgetState(
    BuildContext context,
    String widgetName,
  ) {
    bool saved = true;

    if (!savedWidgets.contains(widgetName)) {
      savedWidgets = _saveWidget(widgetName, savedWidgets);
    } else {
      savedWidgets = _removeWidget(widgetName, savedWidgets);
      saved = false;
    }

    _sharedPreferences.setStringList(
      key,
      savedWidgets,
    );

    _showSnackbar(context);

    getWidgets();

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

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_snackBarMessage),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
