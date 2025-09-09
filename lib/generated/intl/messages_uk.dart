// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m8(blockNumber) => "Блок ${blockNumber}";

  static String m0(days) => "Через ${days} днів";

  static String m1(days) => "${days} днів тому";

  static String m2(number) => "Політ #${number}";

  static String m3(id) => "Приклад елементу ${id}";

  static String m4(launchedAt) => "Запущено: ${launchedAt}";

  static String m5(mission) => "Місія: ${mission}";

  static String m9(count) => "${count} місій";

  static String m10(query) => "Ядра за запитом \"${query}\" не знайдено";

  static String m11(count) => "${count} повторів";

  static String m6(rocketName, rocketType) =>
      "Ракета: ${rocketName} (${rocketType})";

  static String m7(percentage) => "${percentage}% успішних запусків";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("Про додаток"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Версія, посилання, відгуки",
    ),
    "activeStatus": MessageLookupByLibrary.simpleMessage("Активна"),
    "allObjectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Всі цілі досягнуті",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("шаблон_flutter_bloc_app"),
    "appearanceSettingsItem": MessageLookupByLibrary.simpleMessage(
      "Зовнішній вигляд",
    ),
    "appearanceSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Темна тема, динамічні кольори, мови",
    ),
    "appearanceTitle": MessageLookupByLibrary.simpleMessage("Зовнішній вигляд"),
    "article": MessageLookupByLibrary.simpleMessage("Стаття"),
    "blockLabel": m8,
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Радіус кордону",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Кордона сторона",
    ),
    "coreSerial": MessageLookupByLibrary.simpleMessage("Серійний номер ядра"),
    "core_filter_search_hint": MessageLookupByLibrary.simpleMessage(
      "Пошук ядер або місій...",
    ),
    "core_filter_status_active": MessageLookupByLibrary.simpleMessage(
      "Активний",
    ),
    "core_filter_status_all": MessageLookupByLibrary.simpleMessage("Усі"),
    "core_filter_status_inactive": MessageLookupByLibrary.simpleMessage(
      "Неактивний",
    ),
    "core_filter_status_lost": MessageLookupByLibrary.simpleMessage(
      "Втрачений",
    ),
    "core_filter_status_unknown": MessageLookupByLibrary.simpleMessage(
      "Невідомо",
    ),
    "core_status_active": MessageLookupByLibrary.simpleMessage("активний"),
    "core_status_inactive": MessageLookupByLibrary.simpleMessage("неактивний"),
    "core_status_lost": MessageLookupByLibrary.simpleMessage("втрачений"),
    "core_status_unknown": MessageLookupByLibrary.simpleMessage("невідомий"),
    "coresLabel": MessageLookupByLibrary.simpleMessage("Ядра"),
    "customers": MessageLookupByLibrary.simpleMessage("Клієнти"),
    "darkGoldThemeTitle": MessageLookupByLibrary.simpleMessage("Темне золото"),
    "darkMintThemeTitle": MessageLookupByLibrary.simpleMessage("Темна м’ята"),
    "darkThemeFollowSystemSettingsItemTitle":
        MessageLookupByLibrary.simpleMessage("Системна за замовчуванням"),
    "darkThemeOffSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Світла",
    ),
    "darkThemeOnSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Темна",
    ),
    "darkThemeSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Режим теми",
    ),
    "darkThemeTitle": MessageLookupByLibrary.simpleMessage("Темна тема"),
    "daysFromTodayTitle": m0,
    "daysSinceTodayTitle": m1,
    "diameterLabel": MessageLookupByLibrary.simpleMessage("Діаметр"),
    "disabledButtonTitle": MessageLookupByLibrary.simpleMessage("Вимкнено"),
    "disabledRoundedButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Вимкнено (кругла)",
    ),
    "disabledWithIconButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Вимкнено з іконкою",
    ),
    "dynamicColorSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Адаптувати кольори додатку до шпалер",
    ),
    "dynamicColorSettingsItemTitle": MessageLookupByLibrary.simpleMessage(
      "Використовувати динамічні кольори",
    ),
    "emailsTitle": MessageLookupByLibrary.simpleMessage("Електронні листи"),
    "emptyList": MessageLookupByLibrary.simpleMessage("Список порожній"),
    "enabledButtonTitle": MessageLookupByLibrary.simpleMessage("Увімкнено"),
    "engineDetails": MessageLookupByLibrary.simpleMessage("Деталі двигуна"),
    "error": MessageLookupByLibrary.simpleMessage("Помилка"),
    "errorLoadingCores": MessageLookupByLibrary.simpleMessage(
      "Помилка завантаження ядер",
    ),
    "experimentalThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Експериментальна тема",
    ),
    "firstLaunch": MessageLookupByLibrary.simpleMessage("Перший запуск"),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 Перша ступінь"),
    "flight": MessageLookupByLibrary.simpleMessage("Політ"),
    "flightNumber": m2,
    "gridFins": MessageLookupByLibrary.simpleMessage("Сітчасті кермові"),
    "heightLabel": MessageLookupByLibrary.simpleMessage("Висота"),
    "iconAndPaddingButtonTitle": MessageLookupByLibrary.simpleMessage(
      "З іконкою та відступом",
    ),
    "iconButtonTitle": MessageLookupByLibrary.simpleMessage("З іконкою"),
    "id": MessageLookupByLibrary.simpleMessage("ID"),
    "itemDetailsTitle": MessageLookupByLibrary.simpleMessage("Деталі елементу"),
    "itemTitle": m3,
    "itemsTitle": MessageLookupByLibrary.simpleMessage("Приклади елементів"),
    "landing": MessageLookupByLibrary.simpleMessage("Приземлення"),
    "landingLegs": MessageLookupByLibrary.simpleMessage("Ноги приземлення"),
    "landingSuccess": MessageLookupByLibrary.simpleMessage(
      "Приземлення успішне",
    ),
    "launch": MessageLookupByLibrary.simpleMessage("Запуск"),
    "launchSite": MessageLookupByLibrary.simpleMessage("Місце запуску"),
    "launchedAt": m4,
    "launchesTitle": MessageLookupByLibrary.simpleMessage("Запуски"),
    "lightGoldThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Світле золото",
    ),
    "lightMintThemeTitle": MessageLookupByLibrary.simpleMessage("Світла м’ята"),
    "lightThemeTitle": MessageLookupByLibrary.simpleMessage("Світла тема"),
    "linksResources": MessageLookupByLibrary.simpleMessage(
      "Посилання та ресурси",
    ),
    "manufacturer": MessageLookupByLibrary.simpleMessage("Виробник"),
    "mass": MessageLookupByLibrary.simpleMessage("Маса"),
    "massLabel": MessageLookupByLibrary.simpleMessage("Маса"),
    "missionFailed": MessageLookupByLibrary.simpleMessage("Місія не вдалася"),
    "missionOverview": MessageLookupByLibrary.simpleMessage("Огляд місії"),
    "missionSuccess": MessageLookupByLibrary.simpleMessage("Місія успішна"),
    "missionSuccessful": MessageLookupByLibrary.simpleMessage("Місія успішна"),
    "missionTimeline": MessageLookupByLibrary.simpleMessage("Хронологія місії"),
    "missionTitle": m5,
    "missions": m9,
    "na": MessageLookupByLibrary.simpleMessage("Н/Д"),
    "nationality": MessageLookupByLibrary.simpleMessage("Національність"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("Новини"),
    "noCoresFound": m10,
    "noDetails": MessageLookupByLibrary.simpleMessage("Деталі відсутні"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Н/Д"),
    "numberLabel": MessageLookupByLibrary.simpleMessage("Кількість"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Цілі досягнуті",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Цілі місії не досягнуті",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Орбіта"),
    "overview": MessageLookupByLibrary.simpleMessage("Огляд"),
    "payload": MessageLookupByLibrary.simpleMessage("Корисне навантаження"),
    "payloadCapacity": MessageLookupByLibrary.simpleMessage(
      "Корисне навантаження",
    ),
    "payloadTitle": MessageLookupByLibrary.simpleMessage(
      "Корисне навантаження",
    ),
    "pressKit": MessageLookupByLibrary.simpleMessage("Прес-кит"),
    "propellant1Label": MessageLookupByLibrary.simpleMessage("Паливо 1"),
    "propellant2Label": MessageLookupByLibrary.simpleMessage("Паливо 2"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage("Судна порятунку"),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "retiredStatus": MessageLookupByLibrary.simpleMessage(
      "Знято з експлуатації",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Повторити"),
    "reused": MessageLookupByLibrary.simpleMessage("Повторне використання"),
    "reuses": m11,
    "rocket": m6,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Блок"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage("Деталі ракети"),
    "rocketName": MessageLookupByLibrary.simpleMessage("Назва ракети"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Ракета"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Тип"),
    "rocketsTab": MessageLookupByLibrary.simpleMessage("Ракети"),
    "rocketsTitle": MessageLookupByLibrary.simpleMessage("Ракети"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Налаштування"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("ID сайту:"),
    "spaceXCoresTitle": MessageLookupByLibrary.simpleMessage(
      "Супутникові ядра Falcon від SpaceX",
    ),
    "specifications": MessageLookupByLibrary.simpleMessage(
      "Технічні характеристики",
    ),
    "stagesLabel": MessageLookupByLibrary.simpleMessage("Стадії"),
    "staticFireTest": MessageLookupByLibrary.simpleMessage(
      "Статичний вогневий тест",
    ),
    "successRate": m7,
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Системна тема"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Головна"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Налаштування"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Тема"),
    "thrustSeaLevelLabel": MessageLookupByLibrary.simpleMessage(
      "Тяга (на рівні моря)",
    ),
    "tons": MessageLookupByLibrary.simpleMessage("тонн"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage("Прозора"),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Спробувати ще раз"),
    "type": MessageLookupByLibrary.simpleMessage("Тип"),
    "typeLabel": MessageLookupByLibrary.simpleMessage("Тип"),
    "unknown": MessageLookupByLibrary.simpleMessage("Невідомо"),
    "versionLabel": MessageLookupByLibrary.simpleMessage("Версія"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Дивитися відео"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Вікіпедія"),
  };
}
