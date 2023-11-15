import '../infrastructure/user.dart';

class UserService {
  final UserRepository userRepository;

  UserService({required this.userRepository});

  Future<bool> hasUser() {
    return userRepository.hasUser();
  }
}
