import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/orbital_data.dart';
import 'package:flutter_bloc_app_template/features/roadster/utils/roadster_utils.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_section_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
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
          label: S.of(context).apoapsis,
          value: roadster.apoapsisAu?.toAuString() ?? 'N/A',
          icon: Icons.arrow_upward,
        ),
        OrbitalData(
          label: S.of(context).periapsis,
          value: roadster.periapsisAu?.toAuString() ?? 'N/A',
          icon: Icons.arrow_downward,
        ),
        OrbitalData(
          label: S.of(context).semiMajorAxis,
          value: roadster.semiMajorAxisAu?.toAuString() ?? 'N/A',
          icon: Icons.circle_outlined,
        ),
        OrbitalData(
          label: S.of(context).eccentricity,
          value: roadster.eccentricity?.toFixedString() ?? 'N/A',
          icon: Icons.blur_circular,
        ),
        OrbitalData(
          label: S.of(context).inclination,
          value: roadster.inclination?.toDegreeString() ?? 'N/A',
          icon: Icons.trending_up,
        ),
        OrbitalData(
          label: S.of(context).longitude,
          value: roadster.longitude?.toDegreeString() ?? 'N/A',
          icon: Icons.explore,
        ),
      ],
    );
  }
}
