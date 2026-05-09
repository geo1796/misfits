import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Misfits'**
  String get appName;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navTopics.
  ///
  /// In en, this message translates to:
  /// **'Topics'**
  String get navTopics;

  /// No description provided for @navPlayers.
  ///
  /// In en, this message translates to:
  /// **'Players'**
  String get navPlayers;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get play;

  /// No description provided for @secretsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{1 secret} other{{count} secrets}}'**
  String secretsCount(int count);

  /// No description provided for @dismissSecretTitle.
  ///
  /// In en, this message translates to:
  /// **'Dismiss {name}?'**
  String dismissSecretTitle(String name);

  /// No description provided for @renameTopic.
  ///
  /// In en, this message translates to:
  /// **'Rename topic?'**
  String get renameTopic;

  /// No description provided for @addSecret.
  ///
  /// In en, this message translates to:
  /// **'Add secret'**
  String get addSecret;

  /// No description provided for @editSecret.
  ///
  /// In en, this message translates to:
  /// **'Edit secret'**
  String get editSecret;

  /// No description provided for @newTopic.
  ///
  /// In en, this message translates to:
  /// **'New topic'**
  String get newTopic;

  /// No description provided for @titleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get titleLabel;

  /// No description provided for @secretLabel.
  ///
  /// In en, this message translates to:
  /// **'Secret {index}'**
  String secretLabel(int index);

  /// No description provided for @dismissPlayerTitle.
  ///
  /// In en, this message translates to:
  /// **'Dismiss {name}?'**
  String dismissPlayerTitle(String name);

  /// No description provided for @addPlayer.
  ///
  /// In en, this message translates to:
  /// **'Add Player'**
  String get addPlayer;

  /// No description provided for @editPlayer.
  ///
  /// In en, this message translates to:
  /// **'Edit Player'**
  String get editPlayer;

  /// No description provided for @settingsSectionOptions.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get settingsSectionOptions;

  /// No description provided for @randomMisfits.
  ///
  /// In en, this message translates to:
  /// **'Random misfits'**
  String get randomMisfits;

  /// No description provided for @randomMisfitsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Assign a random number of misfits each game'**
  String get randomMisfitsSubtitle;

  /// No description provided for @minMisfits.
  ///
  /// In en, this message translates to:
  /// **'Min misfits'**
  String get minMisfits;

  /// No description provided for @maxMisfits.
  ///
  /// In en, this message translates to:
  /// **'Max misfits'**
  String get maxMisfits;

  /// No description provided for @numberOfMisfits.
  ///
  /// In en, this message translates to:
  /// **'Number of misfits'**
  String get numberOfMisfits;

  /// No description provided for @coopMode.
  ///
  /// In en, this message translates to:
  /// **'Co-op mode'**
  String get coopMode;

  /// No description provided for @coopModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Misfit players know each other'**
  String get coopModeSubtitle;

  /// No description provided for @prankMode.
  ///
  /// In en, this message translates to:
  /// **'Prank mode'**
  String get prankMode;

  /// No description provided for @prankModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'There is a chance that all players are misfits'**
  String get prankModeSubtitle;

  /// No description provided for @prankProbability.
  ///
  /// In en, this message translates to:
  /// **'Prank probability'**
  String get prankProbability;

  /// No description provided for @gameCoopSummary.
  ///
  /// In en, this message translates to:
  /// **'Co-op: {enabled, select, true{yes} false{no} other{enabled}}}'**
  String gameCoopSummary(String enabled);

  /// No description provided for @gameMisfitsRangeSummary.
  ///
  /// In en, this message translates to:
  /// **'Misfits: {min} .. {max}'**
  String gameMisfitsRangeSummary(int min, int max);

  /// No description provided for @gameMisfitsFixedSummary.
  ///
  /// In en, this message translates to:
  /// **'Misfits: {count}'**
  String gameMisfitsFixedSummary(int count);

  /// No description provided for @theSecretIs.
  ///
  /// In en, this message translates to:
  /// **'The secret is:'**
  String get theSecretIs;

  /// No description provided for @youAreAMisfit.
  ///
  /// In en, this message translates to:
  /// **'You are a misfit!'**
  String get youAreAMisfit;

  /// No description provided for @allMisfits.
  ///
  /// In en, this message translates to:
  /// **'All misfits:'**
  String get allMisfits;

  /// No description provided for @endGame.
  ///
  /// In en, this message translates to:
  /// **'End game?'**
  String get endGame;

  /// No description provided for @revealMisfitsConfirmContent.
  ///
  /// In en, this message translates to:
  /// **'Revealing misfits will end the game. Continue?'**
  String get revealMisfitsConfirmContent;

  /// No description provided for @reveal.
  ///
  /// In en, this message translates to:
  /// **'Reveal'**
  String get reveal;

  /// No description provided for @revealMisfits.
  ///
  /// In en, this message translates to:
  /// **'Reveal Misfits'**
  String get revealMisfits;

  /// No description provided for @showSecrets.
  ///
  /// In en, this message translates to:
  /// **'Show Secrets'**
  String get showSecrets;

  /// No description provided for @itWasAPrank.
  ///
  /// In en, this message translates to:
  /// **'It was a prank!'**
  String get itWasAPrank;

  /// No description provided for @everyoneWasAMisfit.
  ///
  /// In en, this message translates to:
  /// **'Everyone was a misfit:'**
  String get everyoneWasAMisfit;

  /// No description provided for @theMisfitsWere.
  ///
  /// In en, this message translates to:
  /// **'The misfits were:'**
  String get theMisfitsWere;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
