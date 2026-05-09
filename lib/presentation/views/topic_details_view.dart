import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misfits/domain/entities/topic.dart';
import 'package:misfits/presentation/state/topics_notifier.dart';

class TopicDetailsView extends ConsumerWidget {
  const TopicDetailsView(this.topicId, {super.key});
  final int topicId;

  void _showTopicTitleFormDialog(
    BuildContext context,
    Topic topic,
    TopicsNotifier notifier,
  ) {
    showDialog(
      context: context,
      builder: (context) => _TopicTitleFormDialog(
        topic,
        validate: (String? title) =>
            notifier.validateTopicTitle(topic.id, title),
        submit: (String title) {
          context.pop();
          notifier.editTopic(topic.copyWith(title: title));
        },
      ),
    );
  }

  void _showTopicSecretFormDialog(
    BuildContext context,
    Topic topic,
    TopicsNotifier notifier, {
    String? initial,
  }) {
    void submit(String secret) {
      context.pop();
      final newSecrets = [...topic.secrets];
      if (initial != null) {
        final index = newSecrets.indexOf(initial);
        newSecrets[index] = secret;
      } else {
        newSecrets.add(secret);
      }
      notifier.editTopic(topic.copyWith(secrets: newSecrets));
    }

    String? validate(String? secret) {
      if (initial != null && secret == initial) {
        return null;
      }
      return notifier.validateTopicSecret(topicId, secret);
    }

    showDialog(
      context: context,
      builder: (context) => _TopicSecretFormDialog(
        submit: submit,
        validate: validate,
        initial: initial,
      ),
    );
  }

  Future<bool> _showDismissSecretDialog(
    BuildContext context,
    String secret,
  ) async => await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Dismiss $secret ?'),
      actions: [
        TextButton(
          onPressed: () => context.pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => context.pop(true),
          child: const Text('Yes'),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topic = ref
        .watch(topicsProvider)
        .topics
        .firstWhere((t) => t.id == topicId);
    final notifier = ref.read(topicsProvider.notifier);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showTopicSecretFormDialog(context, topic, notifier),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(topic.title),
        actions: [
          IconButton(
            onPressed: () =>
                _showTopicTitleFormDialog(context, topic, notifier),
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
        children: [
          ...List.generate(topic.secrets.length, (i) {
            final secret = topic.secrets[i];

            final card = Card(
              elevation: 6,
              child: ListTile(
                leading: const Icon(Icons.lock),
                title: Text(secret),
                trailing: IconButton(
                  onPressed: () => _showTopicSecretFormDialog(
                    context,
                    topic,
                    notifier,
                    initial: secret,
                  ),
                  icon: const Icon(Icons.edit),
                ),
              ),
            );

            if (topic.secrets.length > 10) {
              return Dismissible(
                key: ValueKey(secret),
                direction: DismissDirection.endToStart,
                background: Container(
                  padding: const EdgeInsets.only(right: 16),
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.delete),
                ),
                confirmDismiss: (_) =>
                    _showDismissSecretDialog(context, secret),
                onDismissed: (_) {
                  final newSecrets = [...topic.secrets];
                  newSecrets.remove(secret);
                  notifier.editTopic(topic.copyWith(secrets: newSecrets));
                },
                child: card,
              );
            }

            return card;
          }),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class _TopicTitleFormDialog extends StatefulWidget {
  const _TopicTitleFormDialog(
    this.topic, {
    required this.validate,
    required this.submit,
  });
  final Topic topic;
  final String? Function(String?) validate;
  final void Function(String) submit;

  @override
  State<_TopicTitleFormDialog> createState() => _TopicTitleFormDialogState();
}

class _TopicTitleFormDialogState extends State<_TopicTitleFormDialog> {
  final form = GlobalKey<FormState>();
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.topic.title);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onSubmit() {
      if (!form.currentState!.validate()) {
        return;
      }
      form.currentState!.save();

      widget.submit(controller.text.trim());
    }

    return AlertDialog(
      title: const Text('Rename topic ?'),
      content: Form(
        key: form,
        child: TextFormField(
          controller: controller,
          validator: widget.validate,
          onFieldSubmitted: (_) => onSubmit(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: context.pop,
          child: const Text('Cancel'),
        ),
        TextButton(onPressed: onSubmit, child: const Text('Submit')),
      ],
    );
  }
}

class _TopicSecretFormDialog extends StatefulWidget {
  const _TopicSecretFormDialog({
    required this.submit,
    required this.validate,
    this.initial,
  });
  final void Function(String) submit;
  final String? Function(String?) validate;
  final String? initial;

  @override
  State<_TopicSecretFormDialog> createState() => __TopicSecretFormDialogState();
}

class __TopicSecretFormDialogState extends State<_TopicSecretFormDialog> {
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
    void onSubmit() {
      if (!form.currentState!.validate()) {
        return;
      }
      form.currentState!.save();

      widget.submit(controller.text.trim());
    }

    return AlertDialog(
      title: Text(widget.initial == null ? 'Add secret' : 'Edit secret'),
      content: Form(
        key: form,
        child: TextFormField(
          controller: controller,
          validator: widget.validate,
          onFieldSubmitted: (_) => onSubmit(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: context.pop,
          child: const Text('Cancel'),
        ),
        TextButton(onPressed: onSubmit, child: const Text('Submit')),
      ],
    );
  }
}
