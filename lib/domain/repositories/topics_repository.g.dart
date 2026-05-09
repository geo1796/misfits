// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(topicsRepository)
final topicsRepositoryProvider = TopicsRepositoryProvider._();

final class TopicsRepositoryProvider
    extends
        $FunctionalProvider<
          TopicsRepository,
          TopicsRepository,
          TopicsRepository
        >
    with $Provider<TopicsRepository> {
  TopicsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topicsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topicsRepositoryHash();

  @$internal
  @override
  $ProviderElement<TopicsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TopicsRepository create(Ref ref) {
    return topicsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TopicsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TopicsRepository>(value),
    );
  }
}

String _$topicsRepositoryHash() => r'47680f94e778f7e8c9541c116fffed35853d034e';
