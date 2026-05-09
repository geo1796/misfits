import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:misfits/domain/entities/topic.dart';
import 'package:misfits/presentation/routing/routes.dart';
import 'package:misfits/presentation/state/topics_notifier.dart';

const _secretCount = 10;

class TopicFormView extends ConsumerStatefulWidget {
  const TopicFormView({super.key});

  @override
  ConsumerState<TopicFormView> createState() => _TopicFormViewState();
}

class _TopicFormViewState extends ConsumerState<TopicFormView> {
  final form = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final List<TextEditingController> secretControllers = List.generate(
    _secretCount,
    (i) => TextEditingController(),
  );

  @override
  void dispose() {
    titleController.dispose();
    for (final c in secretControllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New topic')),
      body: Form(
        key: form,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => context.go(const TopicsRoute().location),
                  icon: const Icon(Icons.close),
                  color: Colors.red,
                  iconSize: 32,
                ),
                IconButton(
                  onPressed: submit,
                  icon: const Icon(Icons.check),
                  color: Colors.green,
                  iconSize: 32,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: validate,
                textInputAction: TextInputAction.next,
              ),
            ),
            ...List.generate(
              _secretCount,
              (i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: secretControllers[i],
                  decoration: InputDecoration(labelText: 'Secret ${i + 1}'),
                  validator: validate,
                  textInputAction: i + 1 == _secretCount
                      ? TextInputAction.done
                      : TextInputAction.next,
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  String? validate(String? value) {
    value = value?.trim();
    if (value == null || value.isEmpty) {
      return 'Required';
    }
    return null;
  }

  void submit() {
    if (!form.currentState!.validate()) {
      return;
    }
    form.currentState!.save();

    final topic = Topic(
      id: DateTime.now().millisecondsSinceEpoch,
      title: titleController.text,
      secrets: secretControllers.map((c) => c.text).toList(),
    );

    ref.read(topicsProvider.notifier).addTopic(topic);
    context.go(const TopicsRoute().location);
  }
}
