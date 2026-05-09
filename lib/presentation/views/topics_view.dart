import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misfits/presentation/routing/router.dart';
import 'package:misfits/presentation/routing/routes.dart';
import 'package:misfits/presentation/state/topics_notifier.dart';
import 'package:misfits/presentation/views/app_drawer.dart';

class TopicsView extends ConsumerWidget {
  const TopicsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topicsProvider);
    final notifier = ref.read(topicsProvider.notifier);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text('Topics')),
      body: ListView.builder(
        itemCount: state.topics.length,
        itemBuilder: (context, index) {
          final topic = state.topics[index];
          final isActive = topic.id == state.activeTopicId;
          return ListTile(
            leading: IconButton(
              icon: Icon(isActive ? Icons.star : Icons.star_border),
              iconSize: 32,
              color: isActive ? Colors.amber : null,
              onPressed: () => notifier.setActiveTopic(topic.id),
            ),
            title: Text(topic.title),
            subtitle: Text('${topic.secrets.length} secrets'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              ref
                  .read(routerProvider)
                  .push(TopicDetailsRoute(topic.id).location);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(routerProvider).go(const TopicFormRoute().location);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
