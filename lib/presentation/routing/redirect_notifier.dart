import 'package:misfits/presentation/routing/redirect_state.dart';
import 'package:misfits/presentation/state/game_notifier.dart';
import 'package:misfits/presentation/state/game_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'redirect_notifier.g.dart';

@Riverpod()
class RedirectNotifier extends _$RedirectNotifier {
  @override
  RedirectState build() {
    ref.listen(gameProvider, (_, _) => _apply());
    return _computeFromGameState();
  }

  void _apply() {
    final target = _computeFromGameState();
    if (state != target) {
      state = target;
    }
  }

  RedirectState _computeFromGameState() {
    return ref
        .read(gameProvider)
        .when(
          idle: () => const RedirectState(playing: false),
          active: (_) => const RedirectState(playing: true),
        );
  }
}
