// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $homeRoute,
  $settingsRoute,
  $playersRoute,
  $topicsRoute,
  $topicDetailsRoute,
  $topicFormRoute,
  $gameRoute,
];

RouteBase get $homeRoute =>
    GoRouteData.$route(path: '/', factory: $HomeRoute._fromState);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute =>
    GoRouteData.$route(path: '/settings', factory: $SettingsRoute._fromState);

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $playersRoute =>
    GoRouteData.$route(path: '/players', factory: $PlayersRoute._fromState);

mixin $PlayersRoute on GoRouteData {
  static PlayersRoute _fromState(GoRouterState state) => const PlayersRoute();

  @override
  String get location => GoRouteData.$location('/players');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $topicsRoute =>
    GoRouteData.$route(path: '/topics', factory: $TopicsRoute._fromState);

mixin $TopicsRoute on GoRouteData {
  static TopicsRoute _fromState(GoRouterState state) => const TopicsRoute();

  @override
  String get location => GoRouteData.$location('/topics');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $topicDetailsRoute => GoRouteData.$route(
  path: '/topics/:id',
  factory: $TopicDetailsRoute._fromState,
);

mixin $TopicDetailsRoute on GoRouteData {
  static TopicDetailsRoute _fromState(GoRouterState state) =>
      TopicDetailsRoute(int.parse(state.pathParameters['id']!));

  TopicDetailsRoute get _self => this as TopicDetailsRoute;

  @override
  String get location => GoRouteData.$location(
    '/topics/${Uri.encodeComponent(_self.id.toString())}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $topicFormRoute => GoRouteData.$route(
  path: '/topic-form',
  factory: $TopicFormRoute._fromState,
);

mixin $TopicFormRoute on GoRouteData {
  static TopicFormRoute _fromState(GoRouterState state) =>
      const TopicFormRoute();

  @override
  String get location => GoRouteData.$location('/topic-form');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $gameRoute =>
    GoRouteData.$route(path: '/game', factory: $GameRoute._fromState);

mixin $GameRoute on GoRouteData {
  static GameRoute _fromState(GoRouterState state) => const GameRoute();

  @override
  String get location => GoRouteData.$location('/game');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
