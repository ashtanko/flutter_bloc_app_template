import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/email_list_repository.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:mockito/annotations.dart';

export 'mocks.mocks.dart';

@GenerateMocks([
  EmailListRepository,
  LaunchesRepository,
], customMocks: [
  MockSpec<NavigatorObserver>(onMissingStub: OnMissingStub.returnDefault)
])
// ignore: unused_element
class _Mocks {}
