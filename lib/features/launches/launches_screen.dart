import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/widget/launch_item.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
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
          print('State: $state');
          switch (state) {
            case LaunchesLoadingState _:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case LaunchesSuccessState _:
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) => LaunchItem(
                  launch: state.launches[index],
                ),
                itemCount: state.launches.length,
              );
            case LaunchesErrorState _:
              return Text(S.of(context).error); // TODO
            case LaunchesEmptyState _:
              return Center(
                child: Text(S.of(context).emptyList),
              );
          }

          return EmptyWidget();
        },
      );
}
