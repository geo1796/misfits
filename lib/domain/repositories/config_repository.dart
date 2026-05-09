import 'package:misfits/domain/entities/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config_repository.g.dart';

@Riverpod(keepAlive: true)
ConfigRepository configRepository(Ref ref) =>
    throw StateError('provider for ConfigRepository is not set');

abstract class ConfigRepository {
  Config? getConfig();
  Future<void> saveConfig(Config config);
}
