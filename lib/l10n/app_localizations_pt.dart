// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'flutter_bloc_app_template';

  @override
  String get itemsTitle => 'Artigos de Exemplo';

  @override
  String get emailsTitle => 'E-mails';

  @override
  String get launchesTitle => 'Lançamentos';

  @override
  String itemTitle(Object id) {
    return 'Artigo de Exemplo $id';
  }

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get appearanceTitle => 'Aparência';

  @override
  String get dynamicColorSettingsItemTitle => 'Usar cores dinâmicas';

  @override
  String get dynamicColorSettingsItemDescription =>
      'Adaptar as cores do app ao papel de parede';

  @override
  String get darkThemeSettingsItemTitle => 'Modo de tema';

  @override
  String get darkThemeOnSettingsItemTitle => 'Escuro';

  @override
  String get darkThemeOffSettingsItemTitle => 'Claro';

  @override
  String get darkThemeFollowSystemSettingsItemTitle => 'Padrão do sistema';

  @override
  String get tryAgainButton => 'Tentar novamente';

  @override
  String get appearanceSettingsItem => 'Appearance';

  @override
  String get appearanceSettingsItemDescription =>
      'Dark theme dynamic color, languages';

  @override
  String get aboutSettingsItem => 'About';

  @override
  String get aboutSettingsItemDescription => 'Version, links, feedback';

  @override
  String missionTitle(Object mission) {
    return 'Missão: $mission';
  }

  @override
  String launchedAt(Object launchedAt) {
    return 'Lançado em: $launchedAt';
  }

  @override
  String rocket(Object rocketName, Object rocketType) {
    return 'Foguete: $rocketName ($rocketType)';
  }

  @override
  String daysSinceTodayTitle(Object days) {
    return 'Há $days dias';
  }

  @override
  String daysFromTodayTitle(Object days) {
    return 'Em $days dias';
  }

  @override
  String get themeTitle => 'Tema';

  @override
  String get systemThemeTitle => 'Tema do Sistema';

  @override
  String get lightThemeTitle => 'Tema Claro';

  @override
  String get darkThemeTitle => 'Tema Escuro';

  @override
  String get lightGoldThemeTitle => 'Tema Dourado Claro';

  @override
  String get darkGoldThemeTitle => 'Tema Dourado Escuro';

  @override
  String get lightMintThemeTitle => 'Tema Menta Claro';

  @override
  String get darkMintThemeTitle => 'Tema Menta Escuro';

  @override
  String get experimentalThemeTitle => 'Experimental Theme';

  @override
  String get itemDetailsTitle => 'Detalhes do Artigo';

  @override
  String get error => 'Erro';

  @override
  String get emptyList => 'Lista Vazia';

  @override
  String get tabHome => 'Início';

  @override
  String get tabSettings => 'Configurações';

  @override
  String get newsScreen => 'Notícias';

  @override
  String get disabledButtonTitle => 'Desativado';

  @override
  String get disabledRoundedButtonTitle => 'Desativado com Bordas Arredondadas';

  @override
  String get disabledWithIconButtonTitle => 'Desativado com Ícone';

  @override
  String get enabledButtonTitle => 'Ativado';

  @override
  String get borderRadiusButtonTitle => 'Raio da Borda';

  @override
  String get borderSideButtonTitle => 'Lado da Borda';

  @override
  String get iconButtonTitle => 'Com Ícone';

  @override
  String get iconAndPaddingButtonTitle => 'Com Ícone e Espaçamento';

  @override
  String get transparentButtonTitle => 'Transparente';
}
