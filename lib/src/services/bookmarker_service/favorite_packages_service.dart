part of 'favorites_service.dart';

class FavoritePackagesService extends FavoritesService {
  FavoritePackagesService({
    super.componentType = ComponentType.package,
    required super.sharedPreferences,
  });
}
