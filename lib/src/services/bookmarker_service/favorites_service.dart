import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_guide/src/core/enums/component_type_enum.dart';

part 'favorite_packages_service.dart';
part 'favorite_widgets_service.dart';

class FavoritesService {
  FavoritesService({
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
    savedComponents = _sharedPreferences.getStringList(valueKey) ?? <String>[];
  }

  bool contains(String componentName) {
    return savedComponents.contains(
      componentName,
    );
  }

  bool toggleWidgetState(
    BuildContext context,
    String componentName,
  ) {
    late bool saved;

    if (!savedComponents.contains(componentName)) {
      _saveComponent(
        context,
        componentName,
      );

      saved = true;
    } else {
      _removeComponent(
        context,
        componentName,
      );

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

  void _saveComponent(
    BuildContext context,
    String componentName,
  ) {
    _snackBarMessage =
        '$_componentTypeName ${AppLocalizations.of(context)!.saved}';

    savedComponents.add(
      componentName,
    );
  }

  void _removeComponent(
    BuildContext context,
    String componentName,
  ) {
    _snackBarMessage =
        '$_componentTypeName ${AppLocalizations.of(context)!.removed}';

    final items = <String>[];
    for (var savedWidget in savedComponents) {
      if (savedWidget != componentName) {
        items.add(
          savedWidget,
        );
      }
    }

    savedComponents = items;
  }

  void _showSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        _snackBarMessage,
      ),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      snackBar,
    );
  }
}
