import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/core/enums/component_typ_enum.dart';

part 'package_bookmarker_service.dart';
part 'widget_bookmarker_service.dart';

class BookmarkerService {
  BookmarkerService({
    required this.componentType,
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences {
    _componentTypeName =
        componentType == ComponentType.widget ? 'Widget' : 'Package';
    valueKey = 'saved_${_componentTypeName.toLowerCase()}s';

    getWidgets();
  }

  final ComponentType componentType;
  final SharedPreferences _sharedPreferences;

  late String valueKey;
  late String _componentTypeName;
  late List<String> savedComponents;

  String _snackBarMessage = '';

  void getWidgets() {
    savedComponents = _sharedPreferences.getStringList(valueKey) ?? [];
  }

  bool contains(String widgetName) {
    return savedComponents.contains(widgetName);
  }

  bool toggleWidgetState(
    BuildContext context,
    String widgetName,
  ) {
    bool saved = true;

    if (!savedComponents.contains(widgetName)) {
      savedComponents = _saveWidget(widgetName, savedComponents);
    } else {
      savedComponents = _removeWidget(widgetName, savedComponents);
      saved = false;
    }

    _sharedPreferences.setStringList(
      valueKey,
      savedComponents,
    );

    _showSnackbar(context);

    getWidgets();

    return saved;
  }

  List<String> _saveWidget(String widgetName, List<String>? savedComponents) {
    _snackBarMessage = '$_componentTypeName saved';

    if (savedComponents == null) {
      savedComponents = [widgetName];
    } else {
      savedComponents.add(widgetName);
    }

    return savedComponents;
  }

  List<String> _removeWidget(String widgetName, List<String> savedComponents) {
    _snackBarMessage = '$_componentTypeName removed';

    final items = <String>[];
    for (String savedWidget in savedComponents) {
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
