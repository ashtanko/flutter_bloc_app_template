import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launch/bloc/launch_bloc.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_resource.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_bloc_app_template/widgets/empty_widget.dart';
import 'package:flutter_bloc_app_template/widgets/error_content.dart';
import 'package:flutter_bloc_app_template/widgets/loading_content.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final launch = ModalRoute.of(context)?.settings.arguments as LaunchResource;

    return BlocProvider(
      create: (context) => LaunchBloc(
        RepositoryProvider.of<LaunchesRepository>(context),
      )..add(
          LaunchLoadEvent(
            flightNumber: launch.flightNumber,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${launch.missionName}'),
        ),
        body: LaunchScreenContent(flightNumber: launch.flightNumber),
      ),
    );
  }
}

class LaunchScreenContent extends StatelessWidget {
  const LaunchScreenContent({
    super.key,
    required this.flightNumber,
  });

  final int flightNumber;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchBloc, LaunchState>(builder: (context, state) {
      switch (state) {
        case LaunchLoadingState _:
          return const LoadingContent();
        case LaunchSuccessState _:
          return Text(state.launch.toString());
        case LaunchErrorState _:
          return ErrorContent(
            onTryAgainClick: () {
              context.read<LaunchBloc>().add(
                    LaunchLoadEvent(flightNumber: flightNumber),
                  );
            },
          );
      }
      return EmptyWidget();
    });
  }
}
