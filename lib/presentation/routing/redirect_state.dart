import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misfits/presentation/routing/routes.dart';

part 'redirect_state.freezed.dart';

@freezed
sealed class RedirectState with _$RedirectState {
  const RedirectState._();

  const factory RedirectState({
    required bool playing,
  }) = _RedirectState;

  List<String> get allowedPaths => playing
      ? [
          GameRoute.fullPath,
        ]
      : [
          HomeRoute.fullPath,
          TopicsRoute.fullPath,
          TopicDetailsRoute.fullPath,
          TopicFormRoute.fullPath,
          SettingsRoute.fullPath,
          PlayersRoute.fullPath,
        ];
}
