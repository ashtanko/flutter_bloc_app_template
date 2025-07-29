// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt';

  static String m0(days) => "Em ${days} dias";

  static String m1(days) => "Há ${days} dias";

  static String m2(id) => "Artigo de Exemplo ${id}";

  static String m3(launchedAt) => "Lançado em: ${launchedAt}";

  static String m4(mission) => "Missão: ${mission}";

  static String m5(rocketName, rocketType) =>
      "Foguete: ${rocketName} (${rocketType})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("About"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Version, links, feedback",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage(
      "flutter_bloc_app_template",
    ),
    "appearanceSettingsItem": MessageLookupByLibrary.simpleMessage(
      "Appearance",
    ),
    "appearanceSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Dark theme dynamic color, languages",
    ),
    "appearanceTitle": MessageLookupByLibrary.simpleMessage("Aparência"),
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Raio da Borda",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Lado da Borda",
    ),
    "darkGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Tema Dourado Escuro",
    ),
    "darkMintThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Tema Menta Escuro",
    ),
    "darkThemeFollowSystemSettingsItemTitle":
        MessageLookupByLibrary.simpleMessage("Padrão do sistema"),
    "darkThemeOffSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Claro",
    ),
    "darkThemeOnSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Escuro",
    ),
    "darkThemeSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Modo de tema",
    ),
    "darkThemeTitle": MessageLookupByLibrary.simpleMessage("Tema Escuro"),
    "daysFromTodayTitle": m0,
    "daysSinceTodayTitle": m1,
    "disabledButtonTitle": MessageLookupByLibrary.simpleMessage("Desativado"),
    "disabledRoundedButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Desativado com Bordas Arredondadas",
    ),
    "disabledWithIconButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Desativado com Ícone",
    ),
    "dynamicColorSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Adaptar as cores do app ao papel de parede",
    ),
    "dynamicColorSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Usar cores dinâmicas",
    ),
    "emailsTitle": MessageLookupByLibrary.simpleMessage("E-mails"),
    "emptyList": MessageLookupByLibrary.simpleMessage("Lista Vazia"),
    "enabledButtonTitle": MessageLookupByLibrary.simpleMessage("Ativado"),
    "error": MessageLookupByLibrary.simpleMessage("Erro"),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Com Ícone e Espaçamento",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("Com Ícone"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage(
      "Detalhes do Artigo",
    ),
    "itemTitle": m2,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Artigos de Exemplo"),
    "launchedAt": m3,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Lançamentos"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Tema Dourado Claro",
    ),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Tema Menta Claro",
    ),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Tema Claro"),
    "missionTitle": m4,
    "newsScreen": MessageLookupByLibrary.simpleMessage("Notícias"),
    "rocket": m5,
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Configurações"),
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Tema do Sistema"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Início"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Configurações"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Tema"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparente",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Tentar novamente"),
  };
}
