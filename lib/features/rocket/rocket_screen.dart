import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/rocket/bloc/rocket_bloc.dart';
import 'package:flutter_bloc_app_template/features/rocket/widget/detail_row_widget.dart';
import 'package:flutter_bloc_app_template/features/rocket/widget/spec_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_resource.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_bloc_app_template/utils/rocket_utils.dart';
import 'package:flutter_bloc_app_template/widgets/empty_widget.dart';
import 'package:flutter_bloc_app_template/widgets/error_content.dart';
import 'package:flutter_bloc_app_template/widgets/loading_content.dart';

class RocketScreen extends StatelessWidget {
  const RocketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rocket = ModalRoute.of(context)?.settings.arguments as RocketResource;
    final rocketId = rocket.rocketId ?? 'falcon1';
    return BlocProvider(
      create: (context) => RocketBloc(
        RepositoryProvider.of<RocketRepository>(context),
      )..add(
          RocketLoadEvent(
            rocketId: rocketId,
          ),
        ),
      child: RocketScreenBlocContent(rocketId: rocketId),
    );
  }
}

class RocketScreenBlocContent extends StatelessWidget {
  const RocketScreenBlocContent({
    super.key,
    required this.rocketId,
  });

  final String rocketId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RocketBloc, RocketState>(builder: (context, state) {
      switch (state) {
        case RocketLoadingState _:
          return Scaffold(
            appBar: AppBar(),
            body: const LoadingContent(),
          );
        case RocketSuccessState _:
          return RocketDetailScreen(
            rocket: state.rocket,
          );
        case RocketErrorState _:
          return Scaffold(
            appBar: AppBar(),
            body: ErrorContent(
              onTryAgainClick: () {
                context.read<RocketBloc>().add(
                      RocketLoadEvent(rocketId: rocketId),
                    );
              },
            ),
          );
      }
      return EmptyWidget();
    });
  }
}

class RocketDetailScreen extends StatelessWidget {
  const RocketDetailScreen({super.key, required this.rocket});

  final RocketResource rocket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = S.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                rocket.rocketName ?? '-',
                style: TextStyle(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    rocket.flickrImages?.firstOrNull ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: theme.colorScheme.surfaceContainerHighest,
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          theme.colorScheme.surface.withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.open_in_new),
                onPressed: () {},
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // Overview Card
                Card(
                  elevation: 0,
                  color:
                      theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.overview,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          rocket.description ?? '',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Specifications Grid
                Text(
                  l10n.specifications,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2.5,
                  children: [
                    SpecCardWidget(
                      label: l10n.heightLabel,
                      value: '${rocket.height?.meters} m',
                      icon: Icons.height,
                    ),
                    SpecCardWidget(
                      label: l10n.diameterLabel,
                      value: '${rocket.diameter?.meters} m',
                      icon: Icons.circle_outlined,
                    ),
                    SpecCardWidget(
                      label: l10n.massLabel,
                      value: (rocket.mass?.kg)
                          .toTonsString(l10n.tons, fractionDigits: 0),
                      icon: Icons.fitness_center,
                    ),
                    SpecCardWidget(
                      label: l10n.stagesLabel,
                      value: '${rocket.stages}',
                      icon: Icons.layers,
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Payload Capacity
                Text(
                  l10n.payloadCapacity,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                ...rocket.payloadWeights?.map<Widget>((payload) {
                      return Card(
                        elevation: 0,
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                theme.colorScheme.secondaryContainer,
                            child: Icon(
                              Icons.rocket,
                              color: theme.colorScheme.onSecondaryContainer,
                            ),
                          ),
                          title: Text(payload.name ?? 'N/A'),
                          trailing: Text(
                            (payload.kg)?.toTonsString(l10n.tons,
                                    fractionDigits: 1) ??
                                'N/A',
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }).toList() ??
                    [],
                const SizedBox(height: 24),

                // Engine Details
                Text(
                  l10n.engineDetails,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        DetailRowWidget(
                          label: 'Type',
                          value:
                              rocket.engines?.type.toString().toUpperCase() ??
                                  'N/A',
                        ),
                        DetailRowWidget(
                          label: l10n.typeLabel,
                          value:
                              rocket.engines?.type.toString().toUpperCase() ??
                                  'N/A',
                        ),
                        DetailRowWidget(
                          label: l10n.versionLabel,
                          value: rocket.engines?.version ?? 'N/A',
                        ),
                        DetailRowWidget(
                          label: l10n.numberLabel,
                          value: '${rocket.engines?.number ?? 'N/A'}',
                        ),
                        DetailRowWidget(
                          label: l10n.propellant1Label,
                          value: rocket.engines?.propellant1 ?? 'N/A',
                        ),
                        DetailRowWidget(
                          label: l10n.propellant2Label,
                          value: rocket.engines?.propellant2 ?? 'N/A',
                        ),
                        DetailRowWidget(
                          label: l10n.thrustSeaLevelLabel,
                          value: '${rocket.engines?.thrustSeaLevel?.kN} kN',
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
