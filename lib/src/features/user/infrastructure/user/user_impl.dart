import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/dev/shared_preferences_provider.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository_provider.dart';

class UserRepositoryImpl extends UserRepository {
  //final SharedPreferencesRepository sharedPreferencesRepository;
  final Ref ref;

  UserRepositoryImpl(this.ref);

  @override
  Future<AppUser?> getCurrentUser() async {
    final sharedPreferences =
        ref.read(sharedPreferencesRepositoryProvider).value!;
    final String? id = await sharedPreferences.getIdUser();
    final String? email = await sharedPreferences.getEmailUser();
    final String? name = await sharedPreferences.getNameUser();
    final String? phone = await sharedPreferences.getPhoneUser();
    return AppUser(idUser: id, name: name, email: email, phone: phone);
  }

  @override
  Future<void> setCurrentUser(AppUser user) async {
    final sharedPreferences =
        ref.read(sharedPreferencesRepositoryProvider).value!;
    await sharedPreferences.setIdUser(user.idUser);
    await sharedPreferences.setEmailUser(user.email);
    await sharedPreferences.setNameUser(user.name);
    await sharedPreferences.setPhoneUser(user.phone);

    final String? id = await sharedPreferences.getIdUser();
    print(id);
    final String? email = await sharedPreferences.getEmailUser();
    print(email);
  }

  @override
  Future<bool> hasUser() async {
    final sharedPreferences =
        ref.read(sharedPreferencesRepositoryProvider).value!;
    Completer<bool> completer = Completer<bool>();
    print("Is implementing hasUser ...");
    print("Has sharedPreferencesRepository ? ...");
    await sharedPreferences.getIdUser().then((value) {
      print("Id User");
      print(value);
      if (value != null) {
        completer.complete(true);
      } else {
        completer.complete(false);
      }
    });
    return completer.future;
  }
}
