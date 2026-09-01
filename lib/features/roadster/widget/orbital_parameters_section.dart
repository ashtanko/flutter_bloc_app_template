import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/orbital_data.dart';
import 'package:flutter_bloc_app_template/features/roadster/utils/roadster_utils.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_section_widget.dart';
import 'package:flutter_bloc_app_template/l10n/app_localizations.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class OrbitalParametersSection extends StatelessWidget {
  const OrbitalParametersSection({
    super.key,
    required this.roadster,
  });

  final RoadsterResource roadster;

  @override
  Widget build(BuildContext context) {
    return OrbitalSectionWidget(
      orbitalData: [
        OrbitalData(
          label: AppLocalizations.of(context).apoapsis,
          value: roadster.apoapsisAu?.toAuString() ?? 'N/A',
          icon: Icons.arrow_upward,
        ),
        OrbitalData(
          label: AppLocalizations.of(context).periapsis,
          value: roadster.periapsisAu?.toAuString() ?? 'N/A',
          icon: Icons.arrow_downward,
        ),
        OrbitalData(
          label: AppLocalizations.of(context).semiMajorAxis,
          value: roadster.semiMajorAxisAu?.toAuString() ?? 'N/A',
          icon: Icons.circle_outlined,
        ),
        OrbitalData(
          label: AppLocalizations.of(context).eccentricity,
          value: roadster.eccentricity?.toFixedString() ?? 'N/A',
          icon: Icons.blur_circular,
        ),
        OrbitalData(
          label: AppLocalizations.of(context).inclination,
          value: roadster.inclination?.toDegreeString() ?? 'N/A',
          icon: Icons.trending_up,
        ),
        OrbitalData(
          label: AppLocalizations.of(context).longitude,
          value: roadster.longitude?.toDegreeString() ?? 'N/A',
          icon: Icons.explore,
        ),
      ],
    );
  }
}
