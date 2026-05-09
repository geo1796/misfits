// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Misfits';

  @override
  String get navHome => 'Accueil';

  @override
  String get navTopics => 'Thèmes';

  @override
  String get navPlayers => 'Joueurs';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get submit => 'Valider';

  @override
  String get cancel => 'Annuler';

  @override
  String get required => 'Requis';

  @override
  String get play => 'Jouer';

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
    return 'Supprimer $name ?';
  }

  @override
  String get renameTopic => 'Renommer le thème ?';

  @override
  String get addSecret => 'Ajouter un secret';

  @override
  String get editSecret => 'Modifier le secret';

  @override
  String get newTopic => 'Nouveau thème';

  @override
  String get titleLabel => 'Titre';

  @override
  String secretLabel(int index) {
    return 'Secret $index';
  }

  @override
  String dismissPlayerTitle(String name) {
    return 'Supprimer $name ?';
  }

  @override
  String get addPlayer => 'Ajouter un joueur';

  @override
  String get editPlayer => 'Modifier le joueur';

  @override
  String get settingsSectionOptions => 'Options';

  @override
  String get randomMisfits => 'Misfits aléatoires';

  @override
  String get randomMisfitsSubtitle =>
      'Assigner un nombre aléatoire de misfits par partie';

  @override
  String get minMisfits => 'Misfits min.';

  @override
  String get maxMisfits => 'Misfits max.';

  @override
  String get numberOfMisfits => 'Nombre de misfits';

  @override
  String get coopMode => 'Mode coopératif';

  @override
  String get coopModeSubtitle => 'Les joueurs misfits se connaissent';

  @override
  String get prankMode => 'Mode blague';

  @override
  String get prankModeSubtitle =>
      'Il y a une chance que tous les joueurs soient des misfits';

  @override
  String get prankProbability => 'Probabilité de blague';

  @override
  String gameCoopSummary(String enabled) {
    String _temp0 = intl.Intl.selectLogic(
      enabled,
      {
        'true': 'oui',
        'false': 'non',
        'other': '$enabled',
      },
    );
    return 'Coop : $_temp0';
  }

  @override
  String gameMisfitsRangeSummary(int min, int max) {
    return 'Misfits : $min .. $max';
  }

  @override
  String gameMisfitsFixedSummary(int count) {
    return 'Misfits : $count';
  }

  @override
  String get theSecretIs => 'Le secret est :';

  @override
  String get youAreAMisfit => 'Vous êtes un misfit !';

  @override
  String get allMisfits => 'Tous les misfits :';

  @override
  String get endGame => 'Fin de partie ?';

  @override
  String get revealMisfitsConfirmContent =>
      'Révéler les misfits mettra fin à la partie. Continuer ?';

  @override
  String get reveal => 'Révéler';

  @override
  String get revealMisfits => 'Révéler les misfits';

  @override
  String get showSecrets => 'Voir les secrets';

  @override
  String get itWasAPrank => 'C\'était une blague !';

  @override
  String get everyoneWasAMisfit => 'Tout le monde était un misfit :';

  @override
  String get theMisfitsWere => 'Les misfits étaient :';
}
