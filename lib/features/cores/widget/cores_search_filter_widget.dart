import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/cores/model/core_filter_status.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/cores_ext.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

class CoresSearchFilterWidget extends StatefulWidget {
  const CoresSearchFilterWidget({
    super.key,
    required this.onClear,
    required this.onChanged,
  });

  final void Function(CoreFilterStatus? selectedStatus) onClear;
  final void Function(String searchQuery, CoreFilterStatus? selectedStatus)
      onChanged;

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
                      widget.onClear.call(_selectedStatus);
                      setState(() {});
                    },
                  ),
              ],
              onChanged: (value) {
                widget.onChanged.call(value, _selectedStatus);
                setState(() {});
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
                      key: Key(
                        'core_status_filter_${status.name.toLowerCase()}',
                      ),
                      label: Text(status.title(context)),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() {
                          _selectedStatus = selected ? status : null;
                          if (status == CoreFilterStatus.all) {
                            _selectedStatus = null;
                          }
                        });
                        widget.onChanged.call(
                          _searchController.text,
                          _selectedStatus,
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
