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

  static String m8(blockNumber) => "Bloco ${blockNumber}";

  static String m0(days) => "Em ${days} dias";

  static String m1(days) => "Há ${days} dias";

  static String m2(number) => "Voo #${number}";

  static String m3(id) => "Artigo de Exemplo ${id}";

  static String m4(launchedAt) => "Lançado em: ${launchedAt}";

  static String m5(mission) => "Missão: ${mission}";

  static String m9(count) => "${count} missões";

  static String m10(query) => "Nenhum núcleo encontrado para \"${query}\"";

  static String m11(count) => "${count} reutilizações";

  static String m6(rocketName, rocketType) =>
      "Foguete: ${rocketName} (${rocketType})";

  static String m7(percentage) => "${percentage}% de sucesso";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("About"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Version, links, feedback",
    ),
    "activeStatus": MessageLookupByLibrary.simpleMessage("Ativa"),
    "allObjectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Todos os objetivos concluídos",
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
    "article": MessageLookupByLibrary.simpleMessage("Artigo"),
    "blockLabel": m8,
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Raio da Borda",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Lado da Borda",
    ),
    "coreSerial": MessageLookupByLibrary.simpleMessage(
      "Número de Série do Núcleo",
    ),
    "core_filter_search_hint": MessageLookupByLibrary.simpleMessage(
      "Pesquisar núcleos ou missões...",
    ),
    "core_filter_status_active": MessageLookupByLibrary.simpleMessage("Ativo"),
    "core_filter_status_all": MessageLookupByLibrary.simpleMessage("Todos"),
    "core_filter_status_inactive": MessageLookupByLibrary.simpleMessage(
      "Inativo",
    ),
    "core_filter_status_lost": MessageLookupByLibrary.simpleMessage("Perdido"),
    "core_filter_status_unknown": MessageLookupByLibrary.simpleMessage(
      "Desconhecido",
    ),
    "core_status_active": MessageLookupByLibrary.simpleMessage("ativo"),
    "core_status_inactive": MessageLookupByLibrary.simpleMessage("inativo"),
    "core_status_lost": MessageLookupByLibrary.simpleMessage("perdido"),
    "core_status_unknown": MessageLookupByLibrary.simpleMessage("desconhecido"),
    "coresLabel": MessageLookupByLibrary.simpleMessage("Núcleos"),
    "customers": MessageLookupByLibrary.simpleMessage("Clientes"),
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
    "diameterLabel": MessageLookupByLibrary.simpleMessage("Diâmetro"),
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
    "engineDetails": MessageLookupByLibrary.simpleMessage("Detalhes do Motor"),
    "error": MessageLookupByLibrary.simpleMessage("Erro"),
    "errorLoadingCores": MessageLookupByLibrary.simpleMessage(
      "Erro ao carregar núcleos",
    ),
    "firstLaunch": MessageLookupByLibrary.simpleMessage("Primeiro lançamento"),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 Primeiro Estágio"),
    "flight": MessageLookupByLibrary.simpleMessage("Voo"),
    "flightNumber": m2,
    "gridFins": MessageLookupByLibrary.simpleMessage("Aletas de grade"),
    "heightLabel": MessageLookupByLibrary.simpleMessage("Altura"),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Com Ícone e Espaçamento",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("Com Ícone"),
    "id": MessageLookupByLibrary.simpleMessage("ID"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage(
      "Detalhes do Artigo",
    ),
    "itemTitle": m3,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Artigos de Exemplo"),
    "landing": MessageLookupByLibrary.simpleMessage("Pouso"),
    "landingLegs": MessageLookupByLibrary.simpleMessage("Pernas de pouso"),
    "landingSuccess": MessageLookupByLibrary.simpleMessage(
      "Pouso bem-sucedido",
    ),
    "launch": MessageLookupByLibrary.simpleMessage("Lançamento"),
    "launchSite": MessageLookupByLibrary.simpleMessage("Local de Lançamento"),
    "launchedAt": m4,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Lançamentos"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Tema Dourado Claro",
    ),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Tema Menta Claro",
    ),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Tema Claro"),
    "linksResources": MessageLookupByLibrary.simpleMessage("Links e Recursos"),
    "manufacturer": MessageLookupByLibrary.simpleMessage("Fabricante"),
    "mass": MessageLookupByLibrary.simpleMessage("Massa"),
    "massLabel": MessageLookupByLibrary.simpleMessage("Massa"),
    "missionFailed": MessageLookupByLibrary.simpleMessage("Missão falhou"),
    "missionOverview": MessageLookupByLibrary.simpleMessage(
      "Visão geral da missão",
    ),
    "missionSuccess": MessageLookupByLibrary.simpleMessage("Sucesso da Missão"),
    "missionSuccessful": MessageLookupByLibrary.simpleMessage(
      "Missão bem-sucedida",
    ),
    "missionTimeline": MessageLookupByLibrary.simpleMessage(
      "Cronograma da Missão",
    ),
    "missionTitle": m5,
    "missions": m9,
    "na": MessageLookupByLibrary.simpleMessage("N/D"),
    "nationality": MessageLookupByLibrary.simpleMessage("Nacionalidade"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("Notícias"),
    "noCoresFound": m10,
    "noDetails": MessageLookupByLibrary.simpleMessage(
      "Nenhum detalhe disponível",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("N/D"),
    "numberLabel": MessageLookupByLibrary.simpleMessage("Número"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Objetivos Concluídos",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Objetivos da missão não alcançados",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Órbita"),
    "overview": MessageLookupByLibrary.simpleMessage("Visão Geral"),
    "payload": MessageLookupByLibrary.simpleMessage("Carga útil"),
    "payloadCapacity": MessageLookupByLibrary.simpleMessage(
      "Capacidade de Carga",
    ),
    "payloadTitle": MessageLookupByLibrary.simpleMessage("Carga útil"),
    "pressKit": MessageLookupByLibrary.simpleMessage("Kit de Imprensa"),
    "propellant1Label": MessageLookupByLibrary.simpleMessage("Propelente 1"),
    "propellant2Label": MessageLookupByLibrary.simpleMessage("Propelente 2"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage(
      "Navios de Recuperação",
    ),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "retiredStatus": MessageLookupByLibrary.simpleMessage("Aposentada"),
    "retry": MessageLookupByLibrary.simpleMessage("Tentar novamente"),
    "reused": MessageLookupByLibrary.simpleMessage("Reutilizado"),
    "reuses": m11,
    "rocket": m6,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Bloco"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage(
      "Detalhes do Foguete",
    ),
    "rocketName": MessageLookupByLibrary.simpleMessage("Nome do Foguete"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Foguete"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Tipo"),
    "rocketsTab": MessageLookupByLibrary.simpleMessage("Foguetes"),
    "rocketsTitle": MessageLookupByLibrary.simpleMessage("Foguetes"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Configurações"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("ID do Local:"),
    "spaceXCoresTitle": MessageLookupByLibrary.simpleMessage(
      "Núcleos Falcon da SpaceX",
    ),
    "specifications": MessageLookupByLibrary.simpleMessage("Especificações"),
    "stagesLabel": MessageLookupByLibrary.simpleMessage("Estágios"),
    "staticFireTest": MessageLookupByLibrary.simpleMessage(
      "Teste de Fogo Estático",
    ),
    "successRate": m7,
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Tema do Sistema"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Início"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Configurações"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Tema"),
    "thrustSeaLevelLabel": MessageLookupByLibrary.simpleMessage(
      "Empuxo (nível do mar)",
    ),
    "tons": MessageLookupByLibrary.simpleMessage("toneladas"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Transparente",
    ),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Tentar novamente"),
    "type": MessageLookupByLibrary.simpleMessage("Tipo"),
    "typeLabel": MessageLookupByLibrary.simpleMessage("Tipo"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconhecido"),
    "versionLabel": MessageLookupByLibrary.simpleMessage("Versão"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Assistir Vídeo"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Wikipédia"),
  };
}
