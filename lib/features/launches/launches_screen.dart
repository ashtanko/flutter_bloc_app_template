import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/widget/launch_item.dart'
    show LaunchItem;
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/launch.dart'
    show LaunchResource;
import 'package:flutter_bloc_app_template/widgets/empty_widget.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).launchesTitle),
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
              return const Center(
                child: CircularProgressIndicator(),
              );
            case LaunchesSuccessState _:
              return LaunchesListContent(launches: state.launches);
            case LaunchesErrorState _:
              return Text(S.of(context).error);
            case LaunchesEmptyState _:
              return Center(
                child: Text(S.of(context).emptyList),
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
        ),
        itemCount: launches.length,
      );
}
