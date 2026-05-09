import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misfits/presentation/l10n/app_localizations.dart';
import 'package:misfits/presentation/state/config_notifier.dart';
import 'package:misfits/presentation/views/app_drawer.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context)!;
    final config = ref.watch(configProvider);
    final notifier = ref.read(configProvider.notifier);
    final settings = config.settings;

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: Text(l.navSettings)),
      body: ListView(
        children: [
          _SectionHeader(l.appName),
          SwitchListTile(
            title: Text(l.randomMisfits),
            subtitle: Text(l.randomMisfitsSubtitle),
            value: settings.randomMisfits,
            onChanged: (_) => notifier.toggleRandomMisfits(),
          ),
          if (settings.randomMisfits) ...[
            _CounterRow(
              label: l.minMisfits,
              value: settings.minMisfits,
              onDecrease: notifier.decreaseMinMisfits,
              onIncrease: notifier.increaseMinMisfits,
            ),
            _CounterRow(
              label: l.maxMisfits,
              value: settings.maxMisfits,
              onDecrease: notifier.decreaseMaxMisfits,
              onIncrease: notifier.increaseMaxMisfits,
            ),
          ] else
            _CounterRow(
              label: l.numberOfMisfits,
              value: settings.fixedMisfits,
              onDecrease: notifier.decreaseFixedMisfits,
              onIncrease: notifier.increaseFixedMisfits,
            ),
          _SectionHeader(l.settingsSectionOptions),
          SwitchListTile(
            title: Text(l.coopMode),
            subtitle: Text(l.coopModeSubtitle),
            value: settings.enableCoop,
            onChanged: (_) => notifier.toggleCoop(),
          ),
          SwitchListTile(
            title: Text(l.prankMode),
            subtitle: Text(l.prankModeSubtitle),
            value: settings.enablePrank,
            onChanged: (_) => notifier.togglePrank(),
          ),
          if (settings.enablePrank)
            _PrankProbabilityRow(
              probability: settings.prankProbability,
              onChanged: notifier.setPrankProbability,
            ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _CounterRow extends StatelessWidget {
  const _CounterRow({
    required this.label,
    required this.value,
    required this.onDecrease,
    required this.onIncrease,
  });

  final String label;
  final int value;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: onDecrease,
          ),
          SizedBox(
            width: 32,
            child: Text(
              '$value',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: onIncrease,
          ),
        ],
      ),
    );
  }
}

class _PrankProbabilityRow extends StatelessWidget {
  const _PrankProbabilityRow({
    required this.probability,
    required this.onChanged,
  });

  final int probability;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l.prankProbability),
      subtitle: Slider(
        value: probability.toDouble(),
        min: 5,
        max: 95,
        divisions: 18,
        label: '$probability%',
        onChanged: (v) => onChanged(v.round()),
      ),
      trailing: Text('$probability%'),
    );
  }
}
