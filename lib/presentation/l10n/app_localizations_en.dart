// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Misfits';

  @override
  String get navHome => 'Home';

  @override
  String get navTopics => 'Topics';

  @override
  String get navPlayers => 'Players';

  @override
  String get navSettings => 'Settings';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get submit => 'Submit';

  @override
  String get cancel => 'Cancel';

  @override
  String get required => 'Required';

  @override
  String get play => 'Play';

  @override
  String secretsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count secrets',
      one: '1 secret',
    );
    return '$_temp0';
  }

  @override
  String dismissSecretTitle(String name) {
    return 'Dismiss $name?';
  }

  @override
  String get renameTopic => 'Rename topic?';

  @override
  String get addSecret => 'Add secret';

  @override
  String get editSecret => 'Edit secret';

  @override
  String get newTopic => 'New topic';

  @override
  String get titleLabel => 'Title';

  @override
  String secretLabel(int index) {
    return 'Secret $index';
  }

  @override
  String dismissPlayerTitle(String name) {
    return 'Dismiss $name?';
  }

  @override
  String get addPlayer => 'Add Player';

  @override
  String get editPlayer => 'Edit Player';

  @override
  String get settingsSectionOptions => 'Options';

  @override
  String get randomMisfits => 'Random misfits';

  @override
  String get randomMisfitsSubtitle =>
      'Assign a random number of misfits each game';

  @override
  String get minMisfits => 'Min misfits';

  @override
  String get maxMisfits => 'Max misfits';

  @override
  String get numberOfMisfits => 'Number of misfits';

  @override
  String get coopMode => 'Co-op mode';

  @override
  String get coopModeSubtitle => 'Misfit players know each other';

  @override
  String get prankMode => 'Prank mode';

  @override
  String get prankModeSubtitle =>
      'There is a chance that all players are misfits';

  @override
  String get prankProbability => 'Prank probability';

  @override
  String gameCoopSummary(String enabled) {
    String _temp0 = intl.Intl.selectLogic(
      enabled,
      {
        'true': 'yes',
        'false': 'no',
        'other': '$enabled',
      },
    );
    return 'Co-op: $_temp0';
  }

  @override
  String gameMisfitsRangeSummary(int min, int max) {
    return 'Misfits: $min .. $max';
  }

  @override
  String gameMisfitsFixedSummary(int count) {
    return 'Misfits: $count';
  }

  @override
  String get theSecretIs => 'The secret is:';

  @override
  String get youAreAMisfit => 'You are a misfit!';

  @override
  String get allMisfits => 'All misfits:';

  @override
  String get endGame => 'End game?';

  @override
  String get revealMisfitsConfirmContent =>
      'Revealing misfits will end the game. Continue?';

  @override
  String get reveal => 'Reveal';

  @override
  String get revealMisfits => 'Reveal Misfits';

  @override
  String get showSecrets => 'Show Secrets';

  @override
  String get itWasAPrank => 'It was a prank!';

  @override
  String get everyoneWasAMisfit => 'Everyone was a misfit:';

  @override
  String get theMisfitsWere => 'The misfits were:';
}
