import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launch/bloc/launch_bloc.dart';
import 'package:flutter_bloc_app_template/models/launch.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final launch = ModalRoute.of(context)?.settings.arguments as LaunchResource;

    return BlocProvider(
      create: (context) => LaunchBloc(
        RepositoryProvider.of<LaunchesRepository>(context),
      )..add(
          LaunchLoadEvent(flightNumber: launch.flightNumber),
        ),
      child: BlocBuilder<LaunchBloc, LaunchState>(builder: (context, state) {
        return LaunchScreenContent(
          state: state,
        );
      }),
    );
  }
}

class LaunchScreenContent extends StatelessWidget {
  const LaunchScreenContent({super.key, required this.state});

  final LaunchState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO $state'),
      ),
    );
  }
}
