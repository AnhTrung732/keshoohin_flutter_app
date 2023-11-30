import 'package:keshoohin_flutter_app/src/services/server/server_impl.dart';
import 'package:keshoohin_flutter_app/src/services/server/server_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'server_provider.g.dart';

@riverpod
ServerRepository serverRepository(ServerRepositoryRef ref) =>
    ServerImpl(ref: ref);
