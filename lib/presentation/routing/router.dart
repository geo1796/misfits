import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misfits/presentation/routing/redirect_notifier.dart';
import 'package:misfits/presentation/routing/redirect_state.dart';
import 'package:misfits/presentation/routing/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final redirectListenable = ValueNotifier<RedirectState>(
    ref.read(redirectProvider),
  );
  ref.onDispose(redirectListenable.dispose);

  ref.listen(redirectProvider, (_, next) {
    redirectListenable.value = next;
  });

  return GoRouter(
    refreshListenable: redirectListenable,
    redirect: (context, state) {
      if (!redirectListenable.value.allowedPaths.contains(state.fullPath)) {
        return redirectListenable.value.allowedPaths.first;
      }
      return null;
    },
    routes: $appRoutes,
    initialLocation: const HomeRoute().location,
  );
}
