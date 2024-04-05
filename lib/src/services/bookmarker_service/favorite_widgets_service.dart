part of 'favorites_service.dart';

class FavoriteWidgetsService extends FavoritesService {
  FavoriteWidgetsService({
    super.componentType = ComponentType.widget,
    required super.sharedPreferences,
  });
}
