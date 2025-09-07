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

  static String m0(days) => "Через ${days} днів";

  static String m1(days) => "${days} днів тому";

  static String m2(number) => "Політ #${number}";

  static String m3(id) => "Приклад елементу ${id}";

  static String m4(launchedAt) => "Запущено: ${launchedAt}";

  static String m5(mission) => "Місія: ${mission}";

  static String m6(rocketName, rocketType) =>
      "Ракета: ${rocketName} (${rocketType})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutSettingsItem": MessageLookupByLibrary.simpleMessage("Про додаток"),
    "aboutSettingsItemDescription": MessageLookupByLibrary.simpleMessage(
      "Версія, посилання, відгуки",
    ),
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
    "borderRadiusButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Радіус кордону",
    ),
    "borderSideButtonTitle": MessageLookupByLibrary.simpleMessage(
      "Кордона сторона",
    ),
    "coreSerial": MessageLookupByLibrary.simpleMessage("Серійний номер ядра"),
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
    "error": MessageLookupByLibrary.simpleMessage("Помилка"),
    "experimentalThemeTitle": MessageLookupByLibrary.simpleMessage(
      "Експериментальна тема",
    ),
    "firstStage": MessageLookupByLibrary.simpleMessage("🚀 Перша ступінь"),
    "flight": MessageLookupByLibrary.simpleMessage("Політ"),
    "flightNumber": m2,
    "gridFins": MessageLookupByLibrary.simpleMessage("Сітчасті кермові"),
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
    "missionFailed": MessageLookupByLibrary.simpleMessage("Місія не вдалася"),
    "missionOverview": MessageLookupByLibrary.simpleMessage("Огляд місії"),
    "missionSuccess": MessageLookupByLibrary.simpleMessage("Місія успішна"),
    "missionSuccessful": MessageLookupByLibrary.simpleMessage("Місія успішна"),
    "missionTimeline": MessageLookupByLibrary.simpleMessage("Хронологія місії"),
    "missionTitle": m5,
    "nationality": MessageLookupByLibrary.simpleMessage("Національність"),
    "newsScreen": MessageLookupByLibrary.simpleMessage("Новини"),
    "noDetails": MessageLookupByLibrary.simpleMessage("Деталі відсутні"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Н/Д"),
    "objectivesCompleted": MessageLookupByLibrary.simpleMessage(
      "Цілі досягнуті",
    ),
    "objectivesNotMet": MessageLookupByLibrary.simpleMessage(
      "Цілі місії не досягнуті",
    ),
    "orbit": MessageLookupByLibrary.simpleMessage("Орбіта"),
    "payload": MessageLookupByLibrary.simpleMessage("Корисне навантаження"),
    "payloadTitle": MessageLookupByLibrary.simpleMessage(
      "Корисне навантаження",
    ),
    "pressKit": MessageLookupByLibrary.simpleMessage("Прес-кит"),
    "recoveryShips": MessageLookupByLibrary.simpleMessage("Судна порятунку"),
    "reddit": MessageLookupByLibrary.simpleMessage("Reddit"),
    "reused": MessageLookupByLibrary.simpleMessage("Повторне використання"),
    "rocket": m6,
    "rocketBlock": MessageLookupByLibrary.simpleMessage("Блок"),
    "rocketDetails": MessageLookupByLibrary.simpleMessage("Деталі ракети"),
    "rocketName": MessageLookupByLibrary.simpleMessage("Назва ракети"),
    "rocketTitle": MessageLookupByLibrary.simpleMessage("Ракета"),
    "rocketType": MessageLookupByLibrary.simpleMessage("Тип"),
    "rocketsTab": MessageLookupByLibrary.simpleMessage("Ракети"),
    "settingsTitle": MessageLookupByLibrary.simpleMessage("Налаштування"),
    "siteIdLabel": MessageLookupByLibrary.simpleMessage("ID сайту:"),
    "staticFireTest": MessageLookupByLibrary.simpleMessage(
      "Статичний вогневий тест",
    ),
    "systemThemeTitle": MessageLookupByLibrary.simpleMessage("Системна тема"),
    "tabHome": MessageLookupByLibrary.simpleMessage("Головна"),
    "tabSettings": MessageLookupByLibrary.simpleMessage("Налаштування"),
    "themeTitle": MessageLookupByLibrary.simpleMessage("Тема"),
    "transparentButtonTitle": MessageLookupByLibrary.simpleMessage("Прозора"),
    "tryAgainButton": MessageLookupByLibrary.simpleMessage("Спробувати ще раз"),
    "type": MessageLookupByLibrary.simpleMessage("Тип"),
    "watchVideo": MessageLookupByLibrary.simpleMessage("Дивитися відео"),
    "wikipedia": MessageLookupByLibrary.simpleMessage("Вікіпедія"),
  };
}
