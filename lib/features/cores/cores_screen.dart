import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/bloc/cores_bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/core_item_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/core_loading_content.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_empty_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_error_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_not_found_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_search_filter_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

class CoresScreen extends StatelessWidget {
  const CoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(S.of(context).spaceXCoresTitle),
            actions: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () => print,
              ),
            ],
          ),

          // Search and Filter Section
          CoresSearchFilterWidget(
            onClear: (selectedStatus) {
              context.read<CoresBloc>().add(
                    CoresFilterEvent(
                      searchQuery: '',
                      statusFilter: selectedStatus,
                    ),
                  );
            },
            onChanged: (String value, selectedStatus) {
              context.read<CoresBloc>().add(
                    CoresFilterEvent(
                      searchQuery: value,
                      statusFilter: selectedStatus,
                    ),
                  );
            },
          ),

          const CoresBlocContent(),
        ],
      ),
      floatingActionButton: BlocBuilder<CoresBloc, CoresState>(
        builder: (context, state) {
          if (state is CoresSuccessState) {
            return FloatingActionButton(
              onPressed: () {
                context.read<CoresBloc>().add(const CoresRefreshEvent());
              },
              child: const Icon(Icons.refresh),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class CoresBlocContent extends StatelessWidget {
  const CoresBlocContent({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<CoresBloc, CoresState>(
        builder: (context, state) {
          switch (state) {
            case CoresLoadingState _:
              return const CoreLoadingContent();
            case CoresSuccessState _:
              return CoresListWidget(
                filteredCores: state.filteredCores ?? [],
              );

            case CoresErrorState _:
              return CoresErrorWidget(
                errorMessage: state.message,
              );

            case CoresEmptyState _:
              return const CoresEmptyWidget();

            case CoresNotFoundState _:
              return CoresNotFoundWidget(searchQuery: state.searchQuery);
          }

          return const SizedBox.shrink();
        },
      );
}

class CoresListWidget extends StatelessWidget {
  const CoresListWidget({super.key, required this.filteredCores});

  final List<CoreResource> filteredCores;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final core = filteredCores[index];
            return CoreItemWidget(
              key: Key('${core.coreSerial}$index'),
              core: core,
            );
          },
          childCount: filteredCores.length,
        ),
      ),
    );
  }
}
