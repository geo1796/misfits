// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TopicsNotifier)
final topicsProvider = TopicsNotifierProvider._();

final class TopicsNotifierProvider
    extends $NotifierProvider<TopicsNotifier, TopicsState> {
  TopicsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topicsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topicsNotifierHash();

  @$internal
  @override
  TopicsNotifier create() => TopicsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TopicsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TopicsState>(value),
    );
  }
}

String _$topicsNotifierHash() => r'4b5133ad938ad0ccbb24bed4c71f912d870ce2d1';

abstract class _$TopicsNotifier extends $Notifier<TopicsState> {
  TopicsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TopicsState, TopicsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TopicsState, TopicsState>,
              TopicsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
