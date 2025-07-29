import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/widget/launch_item.dart'
    show LaunchItem;
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/launch.dart'
    show LaunchResource;

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.launchesTitle),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(seconds: 1));
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const LaunchesList(),
          ),
        ),
      );
}

class LaunchesList extends StatelessWidget {
  const LaunchesList({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<LaunchesBloc, LaunchesState>(
        builder: (context, state) {
          switch (state) {
            case LaunchesLoadingState _:
              return const LoadingContent();
            case LaunchesSuccessState _:
              return LaunchesListContent(launches: state.launches);
            case LaunchesErrorState _:
              return ErrorContent(
                onTryAgainClick: () {
                  context.read<LaunchesBloc>().add(const LaunchesEvent.load());
                },
              );
            case LaunchesEmptyState _:
              return EmptyContent(
                content: S.of(context).emptyList,
              );
          }

          return EmptyWidget();
        },
      );
}

class LaunchesListContent extends StatelessWidget {
  const LaunchesListContent({super.key, required this.launches});

  final List<LaunchResource> launches;

  @override
  Widget build(BuildContext context) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) => LaunchItem(
          launch: launches[index],
          onClick: (launch) {
            NavigationService.of(context).navigateTo(Routes.launch, launch);
          },
        ),
        itemCount: launches.length,
      );
}
