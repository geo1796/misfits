// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfigNotifier)
final configProvider = ConfigNotifierProvider._();

final class ConfigNotifierProvider
    extends $NotifierProvider<ConfigNotifier, Config> {
  ConfigNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'configProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$configNotifierHash();

  @$internal
  @override
  ConfigNotifier create() => ConfigNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Config value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Config>(value),
    );
  }
}

String _$configNotifierHash() => r'7f97059e196a34408ff22ef868a97378fd56d894';

abstract class _$ConfigNotifier extends $Notifier<Config> {
  Config build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Config, Config>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Config, Config>,
              Config,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
