import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misfits/presentation/l10n/app_localizations.dart';
import 'package:misfits/presentation/state/config_notifier.dart';
import 'package:misfits/presentation/views/app_drawer.dart';

class PlayersView extends ConsumerWidget {
  const PlayersView({super.key});

  void _showPlayerDialog(
    BuildContext context,
    ConfigNotifier notifier, {
    int? index,
    String? initial,
  }) => showDialog<void>(
    context: context,
    builder: (context) {
      void submit(String player) {
        context.pop();
        if (player.isEmpty || player == initial) {
          return;
        }
        if (index != null) {
          notifier.editPlayer(index, player);
        } else {
          notifier.addPlayer(player);
        }
      }

      String? validate(String? player) {
        if (initial != null && initial == player) {
          return null;
        }
        return notifier.validatePlayer(player);
      }

      return _PlayerFormDialog(
        initial: initial,
        submit: submit,
        validate: validate,
      );
    },
  );

  Future<bool> _showDismissDialog(
    BuildContext context,
    String player,
  ) async => await showDialog(
    context: context,
    builder: (context) {
      final l = AppLocalizations.of(context)!;
      return AlertDialog(
        title: Text(l.dismissPlayerTitle(player)),
        actions: [
          TextButton(
            onPressed: () => context.pop(false),
            child: Text(l.no),
          ),
          TextButton(
            onPressed: () => context.pop(true),
            child: Text(l.yes),
          ),
        ],
      );
    },
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context)!;
    final config = ref.watch(configProvider);
    final notifier = ref.read(configProvider.notifier);
    final players = config.players;

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: Text(l.navPlayers)),
      body: ListView(
        children: [
          ...List.generate(
            players.length,
            (index) {
              final player = players[index];

              final card = Card(
                elevation: 6,
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(player),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => _showPlayerDialog(
                      context,
                      notifier,
                      index: index,
                      initial: player,
                    ),
                  ),
                ),
              );

              if (players.length > 3) {
                return Dismissible(
                  key: ValueKey(player),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    padding: const EdgeInsets.only(right: 16),
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.delete),
                  ),
                  confirmDismiss: (_) => _showDismissDialog(context, player),
                  onDismissed: (_) => notifier.removePlayer(player),
                  child: card,
                );
              }

              return card;
            },
          ),
          const SizedBox(height: 100),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showPlayerDialog(context, notifier),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _PlayerFormDialog extends StatefulWidget {
  const _PlayerFormDialog({
    required this.submit,
    required this.validate,
    this.initial,
  });
  final void Function(String) submit;
  final String? Function(String?) validate;
  final String? initial;

  @override
  State<_PlayerFormDialog> createState() => _PlayerFormDialogState();
}

class _PlayerFormDialogState extends State<_PlayerFormDialog> {
  final form = GlobalKey<FormState>();
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initial);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    void onSubmit() {
      if (!form.currentState!.validate()) return;
      form.currentState!.save();
      widget.submit(controller.text.trim());
    }

    return AlertDialog(
      title: Text(widget.initial == null ? l.addPlayer : l.editPlayer),
      content: Form(
        key: form,
        child: TextFormField(
          textCapitalization: TextCapitalization.sentences,
          controller: controller,
          onFieldSubmitted: (_) => onSubmit(),
          validator: widget.validate,
        ),
      ),
      actions: [
        TextButton(onPressed: context.pop, child: Text(l.cancel)),
        TextButton(onPressed: onSubmit, child: Text(l.submit)),
      ],
    );
  }
}
