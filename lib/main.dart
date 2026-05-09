import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misfits/data/config_repository_impl.dart';
import 'package:misfits/data/game_repository_impl.dart';
import 'package:misfits/data/topics_repository_impl.dart';
import 'package:misfits/domain/repositories/config_repository.dart';
import 'package:misfits/domain/repositories/game_repository.dart';
import 'package:misfits/domain/repositories/topics_repository.dart';
import 'package:misfits/presentation/l10n/app_localizations.dart';
import 'package:misfits/presentation/routing/router.dart';
import 'package:misfits/presentation/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(),
  );

  runApp(
    ProviderScope(
      overrides: [
        configRepositoryProvider.overrideWith(
          (ref) => ConfigRepositoryImpl(prefs),
        ),
        topicsRepositoryProvider.overrideWith(
          (ref) => TopicsRepositoryImpl(prefs),
        ),
        gameRepositoryProvider.overrideWith(
          (ref) => GameRepositoryImpl(prefs),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
      title: 'Misfits',
      theme: appTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('fr'),
      ],
    );
  }
}
