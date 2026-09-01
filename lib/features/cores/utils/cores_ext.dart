import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/cores/model/core_filter_status.dart';
import 'package:flutter_bloc_app_template/l10n/app_localizations.dart';

extension CoreFilterStatusX on CoreFilterStatus {
  String title(BuildContext context) {
    switch (this) {
      case CoreFilterStatus.all:
        return AppLocalizations.of(context).core_filter_status_all;
      case CoreFilterStatus.active:
        return AppLocalizations.of(context).core_filter_status_active;
      case CoreFilterStatus.lost:
        return AppLocalizations.of(context).core_filter_status_lost;
      case CoreFilterStatus.inactive:
        return AppLocalizations.of(context).core_filter_status_inactive;
      case CoreFilterStatus.unknown:
        return AppLocalizations.of(context).core_filter_status_unknown;
    }
  }
}

extension CoreFilterStatusStringX on String? {
  CoreFilterStatus toStatus() {
    switch (this?.toLowerCase()) {
      case 'active':
        return CoreFilterStatus.active;
      case 'lost':
        return CoreFilterStatus.lost;
      case 'inactive':
        return CoreFilterStatus.inactive;
      case 'unknown':
        return CoreFilterStatus.unknown;
      case 'all':
      case null:
        return CoreFilterStatus.unknown;
      default:
        return CoreFilterStatus.unknown;
    }
  }
}
