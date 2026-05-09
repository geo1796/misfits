// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redirect_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RedirectNotifier)
final redirectProvider = RedirectNotifierProvider._();

final class RedirectNotifierProvider
    extends $NotifierProvider<RedirectNotifier, RedirectState> {
  RedirectNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'redirectProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$redirectNotifierHash();

  @$internal
  @override
  RedirectNotifier create() => RedirectNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RedirectState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RedirectState>(value),
    );
  }
}

String _$redirectNotifierHash() => r'025bd27738391de9d06f1fa95da4b7df3d0fbb55';

abstract class _$RedirectNotifier extends $Notifier<RedirectState> {
  RedirectState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<RedirectState, RedirectState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RedirectState, RedirectState>,
              RedirectState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
