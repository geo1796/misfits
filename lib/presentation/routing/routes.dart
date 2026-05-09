import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misfits/presentation/views/game_view.dart';
import 'package:misfits/presentation/views/home_view.dart';
import 'package:misfits/presentation/views/players_view.dart';
import 'package:misfits/presentation/views/settings_view.dart';
import 'package:misfits/presentation/views/topic_details_view.dart';
import 'package:misfits/presentation/views/topic_form_view.dart';
import 'package:misfits/presentation/views/topics_view.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: HomeRoute.fullPath)
class HomeRoute extends GoRouteData with $HomeRoute {
  static const fullPath = '/';

  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}

@TypedGoRoute<SettingsRoute>(path: SettingsRoute.fullPath)
class SettingsRoute extends GoRouteData with $SettingsRoute {
  static const fullPath = '/settings';

  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsView();
  }
}

@TypedGoRoute<PlayersRoute>(path: PlayersRoute.fullPath)
class PlayersRoute extends GoRouteData with $PlayersRoute {
  static const fullPath = '/players';

  const PlayersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PlayersView();
  }
}

@TypedGoRoute<TopicsRoute>(path: TopicsRoute.fullPath)
class TopicsRoute extends GoRouteData with $TopicsRoute {
  static const fullPath = '/topics';

  const TopicsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TopicsView();
  }
}

@TypedGoRoute<TopicDetailsRoute>(path: TopicDetailsRoute.fullPath)
class TopicDetailsRoute extends GoRouteData with $TopicDetailsRoute {
  static const fullPath = '/topics/:id';

  final int id;

  const TopicDetailsRoute(this.id);

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TopicDetailsView(id);
  }
}

@TypedGoRoute<TopicFormRoute>(path: TopicFormRoute.fullPath)
class TopicFormRoute extends GoRouteData with $TopicFormRoute {
  static const fullPath = '/topic-form';

  const TopicFormRoute();

  @override
  Page buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      canPop: false,
      fullscreenDialog: true,
      child: const TopicFormView(),
    );
  }
}

@TypedGoRoute<GameRoute>(path: GameRoute.fullPath)
class GameRoute extends GoRouteData with $GameRoute {
  static const fullPath = '/game';

  const GameRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GameView();
  }
}
