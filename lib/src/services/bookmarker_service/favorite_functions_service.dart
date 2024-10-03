part of 'favorites_service.dart';

class FavoriteFunctionsService extends FavoritesService {
  FavoriteFunctionsService({
    super.componentType = ComponentType.function,
    required super.sharedPreferences,
  });
}
