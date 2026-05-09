import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misfits/domain/entities/game.dart';
import 'package:misfits/presentation/l10n/app_localizations.dart';
import 'package:misfits/presentation/state/config_notifier.dart';
import 'package:misfits/presentation/state/game_notifier.dart';
import 'package:misfits/presentation/state/game_state.dart';
import 'package:misfits/presentation/state/topics_notifier.dart';
import 'package:misfits/presentation/views/home_view.dart';

class GameView extends ConsumerWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameProvider);
    final gameNotifier = ref.read(gameProvider.notifier);
    return gameState.when(
      idle: () => const HomeView(),
      active: (game) => Scaffold(
        appBar: AppBar(title: Text(ref.read(topicsProvider).activeTopic.title)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: _ActionsRow(game: game, gameNotifier: gameNotifier),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: _GameConfigSummary(),
              ),
              _PlayerChecksColumn(game: game, gameNotifier: gameNotifier),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class _GameConfigSummary extends ConsumerWidget {
  const _GameConfigSummary();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context)!;
    final config = ref.watch(configProvider);
    const style = TextStyle(fontWeight: FontWeight.bold);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          l.gameCoopSummary(config.settings.enableCoop.toString()),
          style: style,
        ),
        Text(
          config.settings.randomMisfits
              ? l.gameMisfitsRangeSummary(
                  config.settings.minMisfits,
                  config.settings.maxMisfits,
                )
              : l.gameMisfitsFixedSummary(config.settings.fixedMisfits),
          style: style,
        ),
      ],
    );
  }
}

class _PlayerChecksColumn extends StatelessWidget {
  const _PlayerChecksColumn({
    required this.game,
    required this.gameNotifier,
  });

  final Game game;
  final GameNotifier gameNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final entry in game.playerChecks.entries)
          ListTile(
            title: Text(entry.key),
            trailing: IconButton(
              icon: Icon(
                entry.value ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: entry.value
                  ? null
                  : () {
                      gameNotifier.checkPlayer(entry.key);
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (_) => SizedBox(
                          width: double.infinity,
                          child: _PlayerSecretSheet(
                            player: entry.key,
                            game: game,
                            isMisfit: gameNotifier.isMisfit(entry.key),
                          ),
                        ),
                      );
                    },
            ),
          ),
      ],
    );
  }
}

class _PlayerSecretSheet extends ConsumerWidget {
  const _PlayerSecretSheet({
    required this.player,
    required this.game,
    required this.isMisfit,
  });

  final String player;
  final Game game;
  final bool isMisfit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    if (!isMisfit) {
      final secret = (game as RegularGame).secret;
      return Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(l.theSecretIs, style: textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(secret, style: textTheme.headlineMedium),
          ],
        ),
      );
    }

    final coMisfits = ref.read(configProvider).settings.enableCoop
        ? game.map(
            regular: (g) => g.misfits,
            prank: (g) => g.dummyMisfitsByPlayer[player] ?? [],
          )
        : [];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(l.youAreAMisfit, style: textTheme.headlineMedium),
          if (coMisfits.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(l.allMisfits, style: textTheme.titleMedium),
            const SizedBox(height: 8),
            for (final misfit in coMisfits) Text('• $misfit'),
          ],
        ],
      ),
    );
  }
}

class _ActionsRow extends StatelessWidget {
  const _ActionsRow({
    required this.game,
    required this.gameNotifier,
  });

  final Game game;
  final GameNotifier gameNotifier;

  Future<void> _onRevealMisfits(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        final l = AppLocalizations.of(dialogContext)!;
        return AlertDialog(
          title: Text(l.endGame),
          content: Text(l.revealMisfitsConfirmContent),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(l.cancel),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(l.reveal),
            ),
          ],
        );
      },
    );

    if (confirmed != true || !context.mounted) return;

    await showModalBottomSheet<void>(
      context: context,
      builder: (_) => SizedBox(
        width: double.infinity,
        child: _RevealMisfitsSheet(game: game),
      ),
    );

    gameNotifier.endGame();
  }

  void _onShowSecrets(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => SizedBox(
        width: double.infinity,
        child: _SecretsSheet(game: game, gameNotifier: gameNotifier),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => _onRevealMisfits(context),
          child: Text(l.revealMisfits),
        ),
        TextButton(
          onPressed: () => _onShowSecrets(context),
          child: Text(l.showSecrets),
        ),
      ],
    );
  }
}

class _RevealMisfitsSheet extends StatelessWidget {
  const _RevealMisfitsSheet({required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    final misfits = game.map(
      regular: (g) => g.misfits,
      prank: (g) => g.playerChecks.keys.toList(),
    );
    final isPrank = game is PrankGame;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          if (isPrank) ...[
            Text(l.itWasAPrank, style: textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text(l.everyoneWasAMisfit, style: textTheme.titleMedium),
          ] else
            Text(l.theMisfitsWere, style: textTheme.titleMedium),
          const SizedBox(height: 8),
          for (final misfit in misfits) Text('• $misfit'),
        ],
      ),
    );
  }
}

class _SecretsSheet extends ConsumerWidget {
  const _SecretsSheet({required this.game, required this.gameNotifier});

  final Game game;
  final GameNotifier gameNotifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref
        .watch(gameProvider)
        .maybeWhen(
          active: (g) => g,
          orElse: () => this.game,
        );
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: game.secretChecks.entries.map((entry) {
          final isChecked = entry.value;
          final isCorrect = game is RegularGame && entry.key == game.secret;
          final isPrevious = gameNotifier.previousSecret == entry.key;

          return GestureDetector(
            onTap: isChecked ? null : () => gameNotifier.checkSecret(entry.key),
            child: Chip(
              label: Text(
                entry.key,
                style: TextStyle(
                  color: isChecked ? Colors.white : null,
                  decoration: isPrevious ? TextDecoration.lineThrough : null,
                  decorationThickness: 2,
                ),
              ),
              backgroundColor: isChecked
                  ? (isCorrect ? Colors.green : Colors.red)
                  : null,
            ),
          );
        }).toList(),
      ),
    );
  }
}
