import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/bloc/cores_bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/cores_ext.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/core_item_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/core_loading_content.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_empty_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_error_widget.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_not_found_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

import 'model/core_filter_status.dart';

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
          const CoresSearchFilterWidget(),

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

class CoresSearchFilterWidget extends StatefulWidget {
  const CoresSearchFilterWidget({super.key});

  @override
  State<CoresSearchFilterWidget> createState() =>
      _CoresSearchFilterWidgetState();
}

class _CoresSearchFilterWidgetState extends State<CoresSearchFilterWidget> {
  final TextEditingController _searchController = TextEditingController();
  CoreFilterStatus? _selectedStatus;

  @override
  Widget build(BuildContext context) {
    final statusOptions = CoreFilterStatus.values;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(
              controller: _searchController,
              hintText: S.of(context).core_filter_search_hint,
              leading: const Icon(Icons.search),
              padding: const WidgetStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0),
              ),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _searchController.clear();
                      context.read<CoresBloc>().add(
                            CoresFilterEvent(
                              searchQuery: '',
                              statusFilter: _selectedStatus,
                            ),
                          );
                    },
                  ),
              ],
              onChanged: (value) {
                context.read<CoresBloc>().add(
                      CoresFilterEvent(
                        searchQuery: value,
                        statusFilter: _selectedStatus,
                      ),
                    );
              },
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: statusOptions.map((status) {
                  final isSelected = (_selectedStatus == null &&
                          status == CoreFilterStatus.all) ||
                      _selectedStatus == status;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      label: Text(status.title(context)),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          _selectedStatus = selected ? status : null;
                          if (status == CoreFilterStatus.all) {
                            _selectedStatus = null;
                          }
                        });
                        context.read<CoresBloc>().add(
                              CoresFilterEvent(
                                searchQuery: _searchController.text,
                                statusFilter: _selectedStatus,
                              ),
                            );
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
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
              core: core,
            );
          },
          childCount: filteredCores.length,
        ),
      ),
    );
  }
}
