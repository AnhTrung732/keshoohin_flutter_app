import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user.dart';
import 'package:keshoohin_flutter_app/src/services/shared_preferences/shared_preferences_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final SharedPreferencesRepository sharedPreferencesRepository;

  UserRepositoryImpl(this.sharedPreferencesRepository);

  // @override
  // Future<AppUser?> getCurrentUser() async {
  //   final String? id = await sharedPreferencesRepository.getIdUser();
  //   final String? email = await sharedPreferencesRepository.getEmailUser();
  //   final String? name = await sharedPreferencesRepository.getNameUser();
  //   final String? phone = await sharedPreferencesRepository.getPhoneUser();
  //   return AppUser(idUser: id, name: name, email: email, phone: phone);
  // }

  @override
  Future<void> saveCurrentUser(AppUser user) async {
    await sharedPreferencesRepository.setIdUser(user.idUser);
    await sharedPreferencesRepository.setEmailUser(user.email);
    await sharedPreferencesRepository.setNameUser(user.name);
    await sharedPreferencesRepository.setPhoneUser(user.phone);

    print("CHECKK");
    final String? id = await sharedPreferencesRepository.getIdUser();
    print(id);
    final String? email = await sharedPreferencesRepository.getEmailUser();
    print(email);
  }



  @override
  Future<bool> hasUser() async {
    Completer<bool> completer = Completer<bool>();
    print("Is implementing hasUser ...");
    print("Has sharedPreferencesRepository ? ...");
    await sharedPreferencesRepository.getIdUser().then((value) {
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
