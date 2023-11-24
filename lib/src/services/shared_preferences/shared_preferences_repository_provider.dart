import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_impl.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dev/shared_preferences_provider.dart';

part 'shared_preferences_repository_provider.g.dart';

@riverpod
Future<SharedPreferencesRepository> sharedPreferencesRepository(
        SharedPreferencesRepositoryRef ref) async =>
    SharedPreferencesImpl(ref);
