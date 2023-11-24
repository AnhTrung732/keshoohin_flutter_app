import 'package:keshoohin_flutter_app/src/features/user/infrastructure/location/location.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/location/location_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_provider.g.dart';

@riverpod
Future<LocationRepository> locationRepository(
        LocationRepositoryRef ref) async =>
    LocationImpl();
