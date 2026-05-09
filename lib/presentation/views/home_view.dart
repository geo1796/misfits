import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misfits/presentation/state/game_notifier.dart';
import 'package:misfits/presentation/views/app_drawer.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text('Misfits')),
      body: Center(
        child: TextButton(
          onPressed: () => ref.read(gameProvider.notifier).startGame(),
          child: const Text('Play'),
        ),
      ),
    );
  }
}
