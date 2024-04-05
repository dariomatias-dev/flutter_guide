part of 'bookmarker_service.dart';

class PackageBookmarkerService extends BookmarkerService {
  PackageBookmarkerService({
    super.componentType = ComponentType.package,
    required super.sharedPreferences,
  });
}
