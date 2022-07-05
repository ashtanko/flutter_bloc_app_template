import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/assets.gen.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/theme/style.dart';

abstract class WidgetItem {}

class DeveloperItem extends WidgetItem {
  DeveloperItem(
    this.name,
    this.position,
    this.imageUrl,
    this.icon,
  );

  final String name;
  final String position;
  final String imageUrl;
  final Widget icon;
}

class SimpleItem extends WidgetItem {
  SimpleItem(
    this.name,
    this.imageUrl,
    this.icon,
  );

  final String name;
  final String imageUrl;
  final Widget icon;
}

class ChartComponentsItem extends WidgetItem {
  ChartComponentsItem(
    this.title,
    this.subtitle,
    this.chart1Icon,
    this.chart2Icon,
  );

  final String title;
  final String subtitle;
  final Widget chart1Icon;
  final Widget chart2Icon;
}

class WeatherItem extends WidgetItem {
  WeatherItem(this.city, this.weather, this.temperature, this.icon);

  final String city;
  final String weather;
  final String temperature;
  final Widget icon;
}

class AddItem extends WidgetItem {
  AddItem(this.title, this.icon);

  final String title;
  final Widget icon;
}

class PaymentProfileItem extends WidgetItem {
  PaymentProfileItem(
    this.imageUrl,
    this.name,
    this.surname,
    this.cardIcon,
    this.cardNumber,
    this.hideIcon,
  );

  final String imageUrl;
  final String name;
  final String surname;
  final Widget cardIcon;
  final String cardNumber;
  final Widget hideIcon;
}

class UnlimitedItem extends WidgetItem {
  UnlimitedItem(this.phoneIcon, this.title, this.googlePayIcon);

  final Widget phoneIcon;
  final String title;
  final Widget googlePayIcon;
}

class ColorItem extends WidgetItem {
  ColorItem(this.color, this.title, this.description, this.icon);

  final Color color;
  final String title;
  final String description;
  final Widget icon;
}

class InputDecorationItem extends WidgetItem {
  InputDecorationItem(this.hint);

  final String hint;
}

class OutlineButtonItem extends WidgetItem {
  OutlineButtonItem(this.label);

  final String label;
}

class ElevatedButtonItem extends WidgetItem {
  ElevatedButtonItem(this.label);

  final String label;
}

List<WidgetItem> items = [
  DeveloperItem(
    'Yolanda',
    'Web Development',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRyvVYchaYKgLJ0m-Z8tqXEi3e_q6QvLIYg803K3ZHVvRXw7lGRPp3Rv7YsxgIe8h7s4c&usqp=CAU',
    const Icon(
      Icons.photo_camera,
      color: Colors.black,
    ),
  ),
  SimpleItem(
    'Maria',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCOiz0pFT322WrjG5RFvvzpDoNnzgoAMzmH8ht0aKZcnPApGmIEkK30-o56bq4iFIQgFI&usqp=CAU',
    const Icon(
      Icons.phone,
      color: Colors.black,
    ),
  ),
  ChartComponentsItem(
    'Chart components',
    'Business management service',
    const Icon(
      Icons.bubble_chart,
      color: Colors.black,
      size: 30,
    ),
    const Icon(
      Icons.pie_chart,
      size: 30,
      color: Colors.black,
    ),
  ),
  WeatherItem(
    'Seatle',
    'Cloudy',
    '32°',
    Assets.images.twemojiSunBehindCloud.svg(),
  ),
  AddItem(
    'Add new project',
    const Icon(
      Icons.add,
      size: 30,
      color: Colors.white,
    ),
  ),
  PaymentProfileItem(
    'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'Wade',
    'Warren',
    Assets.images.visa.svg(),
    '4293 3242 ••••',
    Assets.images.hide.svg(),
  ),
  UnlimitedItem(
    Assets.images.phone.svg(),
    'Unlimited',
    Assets.images.googlePay.svg(),
  ),
  ColorItem(
    const Color(0xFFE9FAFF),
    'Quick help',
    'Lorem ipsum dolor sit amet,\nconsectetur permi...',
    Assets.images.helpOutline.svg(),
  ),
  ColorItem(
    const Color(0xFFE9FFF4),
    'Free Giveway',
    'Lorem ipsum dolor sit amet,\nconsectetur permi...',
    Assets.images.givewayOutline.svg(),
  ),
  ColorItem(
    const Color(0xFFFFFEE9),
    'Short trip',
    'Lorem ipsum dolor sit amet,\nconsectetur permi...',
    Assets.images.tripOutline.svg(),
  ),
  InputDecorationItem('Enter Email'),
  OutlineButtonItem('Test'),
  ElevatedButtonItem('Test'),
];

class WidgetListScreen extends StatelessWidget {
  const WidgetListScreen({Key? key}) : super(key: key);

  static const routeName = '/widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text(S.of(context).widgetList),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is DeveloperItem) {
              return buildDeveloperWidget(item);
            } else if (item is SimpleItem) {
              return buildSimpleWidget(item);
            } else if (item is ChartComponentsItem) {
              return buildChartsWidget(item);
            } else if (item is WeatherItem) {
              return buildWeatherWidget(item);
            } else if (item is AddItem) {
              return buildAddWidget(item);
            } else if (item is PaymentProfileItem) {
              return buildPaymentProfileWidget(item);
            } else if (item is UnlimitedItem) {
              return buildUnlimitedWidget(item);
            } else if (item is ColorItem) {
              return buildColorWidget(item);
            } else if (item is InputDecorationItem) {
              return buildInputDecorationWidget(item);
            } else if (item is OutlineButtonItem) {
              return buildOutlineButtonWidget(item);
            } else if (item is ElevatedButtonItem) {
              return buildElevatedButtonWidget(item);
            }

            return Container();
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: items.length,
        ),
      ),
    );
  }

  Widget buildDeveloperWidget(DeveloperItem item) {
    final avatarSize = 50.0;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildCircleAvatar(item.imageUrl, avatarSize, avatarSize),
            const SizedBox(
              width: 10,
            ),
            expandedTextView(
              item.name,
              const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF212121),
                fontWeight: FontWeight.bold,
              ),
              item.position,
              const TextStyle(
                fontSize: 14.0,
                color: Color(0xFF78858F),
              ),
            ),
            IconButton(
              icon: item.icon,
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }

  Widget expandedTextView(
    String title,
    TextStyle titleStyle,
    String subtitle,
    TextStyle subtitleStyle,
  ) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: false,
            style: titleStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: false,
            style: subtitleStyle,
          ),
        ],
      ),
    );
  }

  Widget buildSimpleWidget(SimpleItem item) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: CachedNetworkImage(
                imageUrl: item.imageUrl,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(
                        fontSize: 24.0,
                        color: Color(0xFF212121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  item.icon,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChartsWidget(ChartComponentsItem item) {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF00D9F5),
            Color(0xFF00F5A0),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            item.chart1Icon,
            const SizedBox(
              width: 10,
            ),
            expandedTextView(
              item.title,
              const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF212121),
                fontWeight: FontWeight.bold,
              ),
              item.subtitle,
              const TextStyle(
                color: Color(0xFF212121),
                fontSize: 13.0,
              ),
            ),
            item.chart2Icon,
          ],
        ),
      ),
    );
  }

  Widget buildWeatherWidget(WeatherItem item) {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFDD2476),
            Color(0xFFFF512F),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.city,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item.weather,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              item.temperature,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            item.icon,
          ],
        ),
      ),
    );
  }

  Widget buildAddWidget(AddItem item) {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFEA384D),
            Color(0xFFD31027),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            item.icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              item.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPaymentProfileWidget(PaymentProfileItem item) {
    final avatarSize = 60.0;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildCircleAvatar(item.imageUrl, avatarSize, avatarSize),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${item.name} ${item.surname}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.images.visa.svg(),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        item.cardNumber,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: null,
                        icon: item.hideIcon,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCircleAvatar(String imageUrl, double width, double height) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  Widget buildUnlimitedWidget(UnlimitedItem item) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                item.phoneIcon,
                const SizedBox(
                  width: 25,
                ),
                Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            item.googlePayIcon,
          ],
        ),
      ),
    );
  }

  Widget buildColorWidget(ColorItem item) {
    return Container(
      decoration: BoxDecoration(
        color: item.color,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            item.icon,
            const SizedBox(
              width: 16,
            ),
            expandedTextView(
              item.title,
              const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              item.description,
              const TextStyle(
                color: Color(0xFF212121),
                fontSize: 13.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputDecorationWidget(InputDecorationItem item) {
    return SizedBox(
      height: 54,
      child: TextFormField(
        decoration: InputDecoration(hintText: item.hint),
      ),
    );
  }

  Widget buildOutlineButtonWidget(OutlineButtonItem item) {
    return OutlinedButton(
      onPressed: () {
        print('TODO');
      },
      child: Text(
        item.label,
      ),
    );
  }

  Widget buildElevatedButtonWidget(ElevatedButtonItem item) {
    return ElevatedButton(
      onPressed: () {
        print('TODO');
      },
      child: Text(item.label, style: Style.elevatedButtonTextStyleDark),
    );
  }
}
