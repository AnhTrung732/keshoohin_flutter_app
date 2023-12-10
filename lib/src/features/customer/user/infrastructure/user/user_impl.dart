import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/domain/app_user.dart';
import 'package:keshoohin_flutter_app/src/features/customer/user/infrastructure/user/user.dart';

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
    final String token = await storage.getTokenUser();
    final String email = await storage.getEmailUser();
    final String name = await storage.getNameUser();
    final String phone = await storage.getPhoneUser();
    return AppUser(token: token, name: name, email: email, phone: phone);
  }

  @override
  Future<void> setCurrentUser(AppUser user) async {
    await storage.setTokenUser(user.token);
    await storage.setEmailUser(user.email);
    await storage.setNameUser(user.name);
    await storage.setPhoneUser(user.phone);
    // print(user.token);
    // print(user.email);
    // print(user.name);
    // print(user.phone);
    // final String id = await storage.getTokenUser();
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
