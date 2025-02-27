import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/widgets/empty_widget.dart';

class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).messagesTitle),
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
          if (state is LaunchesInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is LaunchesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is LaunchesEmpty) {
            return Center(
              child: Text(S.of(context).emptyList),
            );
          }

          if (state is LaunchesLoaded) {
            var launches = state.launches;

            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => ListTile(
                title: Text(launches[index].missionName ?? 'Name'),
                onTap: () {
                  // TODO handle tap
                },
              ),
              itemCount: launches.length,
            );
          }

          if (state is LaunchesLoadFailure) {
            return Text(S.of(context).error); // TODO
          }

          return EmptyWidget();
        },
      );
}
