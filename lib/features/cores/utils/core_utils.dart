import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:intl/intl.dart';

Color getStatusColor(BuildContext context, String? status) {
  if (status == null) return Colors.blue;

  final loc = S.of(context);

  final statusMap = <String, Color>{
    loc.core_status_active.toLowerCase(): Colors.green,
    loc.core_status_lost.toLowerCase(): Colors.red,
    loc.core_status_inactive.toLowerCase(): Colors.orange,
    loc.core_status_unknown.toLowerCase(): Colors.grey,
  };

  return statusMap[status.toLowerCase()] ?? Colors.blue;
}

String formatFirstLaunch(BuildContext context, String? isoDate) {
  if (isoDate == null || isoDate.isEmpty) return '';
  final date = DateTime.parse(isoDate);
  final loc = S.of(context);
  final formatted = DateFormat.yMMMd().format(date);
  return '${loc.firstLaunch}: $formatted';
}
