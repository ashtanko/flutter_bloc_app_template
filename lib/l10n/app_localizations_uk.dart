// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'шаблон_flutter_bloc_app';

  @override
  String get itemsTitle => 'Приклади елементів';

  @override
  String get emailsTitle => 'Електронні листи';

  @override
  String get launchesTitle => 'Запуски';

  @override
  String itemTitle(Object id) {
    return 'Приклад елементу $id';
  }

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get appearanceTitle => 'Зовнішній вигляд';

  @override
  String get dynamicColorSettingsItemTitle =>
      'Використовувати динамічні кольори';

  @override
  String get dynamicColorSettingsItemDescription =>
      'Адаптувати кольори додатку до шпалер';

  @override
  String get darkThemeSettingsItemTitle => 'Режим теми';

  @override
  String get darkThemeOnSettingsItemTitle => 'Темна';

  @override
  String get darkThemeOffSettingsItemTitle => 'Світла';

  @override
  String get darkThemeFollowSystemSettingsItemTitle =>
      'Системна за замовчуванням';

  @override
  String get tryAgainButton => 'Спробувати ще раз';

  @override
  String get appearanceSettingsItem => 'Зовнішній вигляд';

  @override
  String get appearanceSettingsItemDescription =>
      'Темна тема, динамічні кольори, мови';

  @override
  String get aboutSettingsItem => 'Про додаток';

  @override
  String get aboutSettingsItemDescription => 'Версія, посилання, відгуки';

  @override
  String missionTitle(Object mission) {
    return 'Місія: $mission';
  }

  @override
  String launchedAt(Object launchedAt) {
    return 'Запущено: $launchedAt';
  }

  @override
  String rocket(Object rocketName, Object rocketType) {
    return 'Ракета: $rocketName ($rocketType)';
  }

  @override
  String daysSinceTodayTitle(Object days) {
    return '$days днів тому';
  }

  @override
  String daysFromTodayTitle(Object days) {
    return 'Через $days днів';
  }

  @override
  String get themeTitle => 'Тема';

  @override
  String get systemThemeTitle => 'Системна тема';

  @override
  String get lightThemeTitle => 'Світла тема';

  @override
  String get darkThemeTitle => 'Темна тема';

  @override
  String get lightGoldThemeTitle => 'Світле золото';

  @override
  String get darkGoldThemeTitle => 'Темне золото';

  @override
  String get lightMintThemeTitle => 'Світла м’ята';

  @override
  String get darkMintThemeTitle => 'Темна м’ята';

  @override
  String get experimentalThemeTitle => 'Експериментальна тема';

  @override
  String get itemDetailsTitle => 'Деталі елементу';

  @override
  String get error => 'Помилка';

  @override
  String get emptyList => 'Список порожній';

  @override
  String get tabHome => 'Головна';

  @override
  String get tabSettings => 'Налаштування';

  @override
  String get newsScreen => 'Новини';

  @override
  String get disabledButtonTitle => 'Вимкнено';

  @override
  String get disabledRoundedButtonTitle => 'Вимкнено (кругла)';

  @override
  String get disabledWithIconButtonTitle => 'Вимкнено з іконкою';

  @override
  String get enabledButtonTitle => 'Увімкнено';

  @override
  String get borderRadiusButtonTitle => 'Радіус кордону';

  @override
  String get borderSideButtonTitle => 'Кордона сторона';

  @override
  String get iconButtonTitle => 'З іконкою';

  @override
  String get iconAndPaddingButtonTitle => 'З іконкою та відступом';

  @override
  String get transparentButtonTitle => 'Прозора';

  @override
  String get missionTimeline => 'Хронологія місії';

  @override
  String get staticFireTest => 'Статичний вогневий тест';

  @override
  String get launch => 'Запуск';

  @override
  String get missionSuccess => 'Місія успішна';

  @override
  String get objectivesCompleted => 'Цілі досягнуті';

  @override
  String get missionSuccessful => 'Місія успішна';

  @override
  String get missionFailed => 'Місія не вдалася';

  @override
  String get allObjectivesCompleted => 'Всі цілі досягнуті';

  @override
  String get objectivesNotMet => 'Цілі місії не досягнуті';

  @override
  String get rocketTitle => 'Ракета';

  @override
  String get payload => 'Корисне навантаження';

  @override
  String get orbit => 'Орбіта';

  @override
  String get rocketDetails => 'Деталі ракети';

  @override
  String get rocketName => 'Назва ракети';

  @override
  String get rocketType => 'Тип';

  @override
  String get rocketBlock => 'Блок';

  @override
  String get firstStage => '🚀 Перша ступінь';

  @override
  String get coreSerial => 'Серійний номер ядра';

  @override
  String get flight => 'Політ';

  @override
  String get landing => 'Приземлення';

  @override
  String get landingSuccess => 'Приземлення успішне';

  @override
  String get gridFins => 'Сітчасті кермові';

  @override
  String get landingLegs => 'Ноги приземлення';

  @override
  String get reused => 'Повторне використання';

  @override
  String get notAvailable => 'Н/Д';

  @override
  String get recoveryShips => 'Судна порятунку';

  @override
  String get payloadTitle => 'Корисне навантаження';

  @override
  String get id => 'ID';

  @override
  String get type => 'Тип';

  @override
  String get mass => 'Маса';

  @override
  String get manufacturer => 'Виробник';

  @override
  String get nationality => 'Національність';

  @override
  String get customers => 'Клієнти';

  @override
  String get missionOverview => 'Огляд місії';

  @override
  String get noDetails => 'Деталі відсутні';

  @override
  String get linksResources => 'Посилання та ресурси';

  @override
  String get watchVideo => 'Дивитися відео';

  @override
  String get wikipedia => 'Вікіпедія';

  @override
  String get article => 'Стаття';

  @override
  String get reddit => 'Reddit';

  @override
  String get pressKit => 'Прес-кит';

  @override
  String get launchSite => 'Місце запуску';

  @override
  String get siteIdLabel => 'ID сайту:';

  @override
  String flightNumber(Object number) {
    return 'Політ #$number';
  }

  @override
  String get rocketsTab => 'Ракети';

  @override
  String get activeStatus => 'Активна';

  @override
  String get retiredStatus => 'Знято з експлуатації';

  @override
  String successRate(Object percentage) {
    return '$percentage% успішних запусків';
  }

  @override
  String get rocketsTitle => 'Ракети';

  @override
  String get overview => 'Огляд';

  @override
  String get specifications => 'Технічні характеристики';

  @override
  String get payloadCapacity => 'Корисне навантаження';

  @override
  String get engineDetails => 'Деталі двигуна';

  @override
  String get heightLabel => 'Висота';

  @override
  String get diameterLabel => 'Діаметр';

  @override
  String get massLabel => 'Маса';

  @override
  String get stagesLabel => 'Стадії';

  @override
  String get typeLabel => 'Тип';

  @override
  String get versionLabel => 'Версія';

  @override
  String get numberLabel => 'Кількість';

  @override
  String get propellant1Label => 'Паливо 1';

  @override
  String get propellant2Label => 'Паливо 2';

  @override
  String get thrustSeaLevelLabel => 'Тяга (на рівні моря)';

  @override
  String get tons => 'тонн';

  @override
  String get learnMore => 'Дізнатися більше';

  @override
  String get launchInformation => 'Інформація про запуск';

  @override
  String get launchMass => 'Маса запуску';

  @override
  String get launchVehicle => 'Ракета-носій';

  @override
  String get orbitalParameters => 'Орбітальні параметри';

  @override
  String get millionKm => 'мільйон км';

  @override
  String get missionDetails => 'Деталі місії';

  @override
  String get trackLive => 'Слідкувати онлайн';

  @override
  String get marsDistance => 'Відстань до Марса';

  @override
  String get earthDistance => 'Відстань до Землі';

  @override
  String get currentSpeed => 'Поточна швидкість';

  @override
  String get orbitalPeriod => 'Орбітальний період';

  @override
  String get unitDays => 'днів';

  @override
  String get unitKph => 'км/год';

  @override
  String launched(Object date) {
    return 'Запуск: $date';
  }

  @override
  String get roadsterTitle => 'Роадстер';

  @override
  String get roadsterDescription => 'Tesla Roadster Ілона Маска';

  @override
  String get apoapsis => 'Апоцентр';

  @override
  String get periapsis => 'Перицентр';

  @override
  String get semiMajorAxis => 'Велика піввісь';

  @override
  String get eccentricity => 'Ексцентриситет';

  @override
  String get inclination => 'Нахил';

  @override
  String get longitude => 'Довгота';
}
