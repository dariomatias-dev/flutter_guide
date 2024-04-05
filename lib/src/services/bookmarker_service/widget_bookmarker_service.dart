part of 'bookmarker_service.dart';

class WidgetBookmarkerService extends BookmarkerService {
  WidgetBookmarkerService({
    super.componentType = ComponentType.widget,
    required super.sharedPreferences,
  });
}
