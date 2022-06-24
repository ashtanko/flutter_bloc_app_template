import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class WidgetListScreen extends StatelessWidget {
  const WidgetListScreen({Key? key}) : super(key: key);

  static const routeName = ':widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).widgetList),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomButton(
                title: S.of(context).disabledButtonTitle,
              ),
              CustomButton(
                title: S.of(context).disabledRoundedButtonTitle,
                isRounded: true,
              ),
              CustomButton(
                icon: const Icon(Icons.android_sharp),
                title: S.of(context).disabledWithIconButtonTitle,
                isRounded: true,
              ),
              const CustomButton(
                icon: Icon(Icons.wifi),
                isRounded: true,
              ),
              CustomButton(
                title: S.of(context).enabledButtonTitle,
                isRounded: true,
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                title: S.of(context).borderRadiusButtonTitle,
                isRounded: true,
                borderRadius: 20,
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                title: S.of(context).borderSideButtonTitle,
                isRounded: true,
                borderRadius: 20,
                onPressed: () {
                  // TODO
                },
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              CustomButton(
                title: S.of(context).iconButtonTitle,
                icon: const Icon(Icons.style),
                isRounded: true,
                borderRadius: 10,
                onPressed: () {
                  // TODO
                },
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              CustomButton(
                title: S.of(context).iconAndPaddingButtonTitle,
                icon: const Icon(Icons.attachment),
                iconPadding: 20,
                isRounded: true,
                borderRadius: 10,
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                title: S.of(context).transparentButtonTitle,
                icon: const Icon(Icons.extension),
                iconPadding: 20,
                isRounded: true,
                borderRadius: 10,
                color: Colors.transparent,
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                icon: const Icon(Icons.brightness_3),
                iconPadding: 20,
                isRounded: true,
                borderRadius: 10,
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                width: 100,
                height: 45,
                icon: const Icon(Icons.admin_panel_settings),
                iconPadding: 20,
                isRounded: true,
                borderRadius: 40,
                color: Colors.teal[700],
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                icon: const Icon(Icons.adb),
                iconPadding: 20,
                isRounded: true,
                borderRadius: 0,
                side: const BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
                onPressed: () {
                  // TODO
                },
              ),
              CustomButton(
                height: 60,
                icon: const Icon(Icons.search),
                iconPadding: 10,
                color: Colors.indigo,
                isRounded: true,
                borderRadius: 10,
                onPressed: () {
                  // TODO
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
