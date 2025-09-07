import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/rockets/bloc/rockets_bloc.dart';
import 'package:flutter_bloc_app_template/features/rockets/widget/rocket_item/rocket_item.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.rocketsTitle),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(seconds: 1));
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const RocketsBlocContent(),
          ),
        ),
      );
}

class RocketsBlocContent extends StatelessWidget {
  const RocketsBlocContent({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<RocketsBloc, RocketsState>(
        builder: (context, state) {
          switch (state) {
            case RocketsLoadingState _:
              return const LoadingContent();
            case RocketsSuccessState _:
              return RocketListContent(rockets: state.rockets);
            case RocketsErrorState _:
              return ErrorContent(
                onTryAgainClick: () {
                  context.read<RocketsBloc>().add(const RocketsEvent.load());
                },
              );
            case RocketsEmptyState _:
              return EmptyContent(
                content: S.of(context).emptyList,
              );
          }

          return EmptyWidget();
        },
      );
}

class RocketListContent extends StatelessWidget {
  const RocketListContent({super.key, required this.rockets});

  final List<RocketResource> rockets;

  @override
  Widget build(BuildContext context) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) => RocketItemWidget(
          key: Key('${rockets[index].rocketName}${rockets[index].rocketType}'),
          rocket: rockets[index],
          onClick: (launch) {
            //todo
          },
        ),
        itemCount: rockets.length,
      );
}
