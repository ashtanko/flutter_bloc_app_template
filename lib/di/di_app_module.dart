import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIAppModule {
  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();
}
