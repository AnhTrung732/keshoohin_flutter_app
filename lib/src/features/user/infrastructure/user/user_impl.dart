import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/features/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/user/infrastructure/user/user.dart';
import 'package:keshoohin_flutter_app/src/services/storage/storage_provider.dart';

class UserRepositoryImpl extends UserRepository {
  final Ref ref;
  late final storage;
  UserRepositoryImpl(this.ref) {
    _initialize();
  }

  Future<void> _initialize() async {
    storage = ref.read(storageRepositoryProvider);
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    final String id = await storage.getIdUser();
    final String email = await storage.getEmailUser();
    final String name = await storage.getNameUser();
    final String phone = await storage.getPhoneUser();
    return AppUser(idUser: id, name: name, email: email, phone: phone);
  }

  @override
  Future<void> setCurrentUser(AppUser user) async {
    await storage.setIdUser(user.idUser);
    await storage.setEmailUser(user.email);
    await storage.setNameUser(user.name);
    await storage.setPhoneUser(user.phone);
    // print(user.idUser);
    // print(user.email);
    // print(user.name);
    // print(user.phone);
    // final String id = await storage.getIdUser();
    // print(id);
    // final String email = await storage.getEmailUser();
    // print(email);
    // final String name = await storage.getNameUser();
    // print(name);
    // final String phone = await storage.getPhoneUser();
    // print(phone);
  }

  @override
  Future<bool> hasUser() async {
    Completer<bool> completer = Completer<bool>();
    await storage.getIdUser().then((value) {
      if (value != null && value != 'Chuoi trong' && value != 'null') {
        completer.complete(true);
        print(true);
      } else {
        completer.complete(false);
        print(false);
      }
    });
    return completer.future;
  }
}
