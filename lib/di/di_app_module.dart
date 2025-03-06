import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';

@module
abstract class DIAppModule {
  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();

  Talker provideLogger() {
    return Talker();
  }
}
