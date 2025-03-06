import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/models/launch.dart';

class LaunchItem extends StatelessWidget {
  const LaunchItem({
    super.key,
    required this.launch,
    this.onClick = _defaultOnClick,
  });

  final LaunchResource launch;
  final void Function(LaunchResource) onClick;

  static void _defaultOnClick(LaunchResource launch) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: InkWell(
        onTap: () => onClick(launch),
        borderRadius: BorderRadius.circular(12.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// **Top Row: Avatar + Mission Name + Launch Result**
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16.0,
                            backgroundImage: launch.links?.missionPatchSmall !=
                                    null
                                ? NetworkImage(launch.links!.missionPatchSmall!)
                                : null,
                            backgroundColor: Colors.grey[300],
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Mission: ${launch.missionName ?? ''}',
                              style: Theme.of(context).textTheme.titleMedium,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    LaunchStatusWidget(
                        isSuccess: launch.launchSuccess ?? false),
                  ],
                ),

                const SizedBox(height: 4),

                /// **Date and Time**
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: LaunchDateTimeWidget(
                    launchDays: launch.launchDays,
                  ),
                ),

                /// **Rocket Info**
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RocketLabelWidget(
                    rocket: launch.rocket,
                  ),
                ),

                /// **Launch Days Info**
                if (launch.launchDays != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Launched at: ${launch.launchTime}',
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RocketLabelWidget extends StatelessWidget {
  const RocketLabelWidget({super.key, required this.rocket});

  final RocketResource? rocket;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rocket: ${rocket?.rocketName ?? ''} (${rocket?.rocketType ?? ''})',
      style: Theme.of(context).textTheme.labelLarge,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class LaunchDateTimeWidget extends StatelessWidget {
  const LaunchDateTimeWidget({
    super.key,
    required this.launchDays,
  });

  final LaunchDays? launchDays;

  @override
  Widget build(BuildContext context) {
    switch (launchDays) {
      case Unknown():
        return const Text('Unknown');
      case Since():
        return Text('${(launchDays as Since).formattedDate} days since today');
      case From():
        return Text('${(launchDays as Since).formattedDate} days from today');
    }
    return Container();
  }
}

class LaunchStatusWidget extends StatelessWidget {
  const LaunchStatusWidget({super.key, required this.isSuccess});

  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    if (isSuccess) {
      return const Icon(Icons.rocket_launch_rounded, color: Colors.greenAccent);
    } else {
      return const Icon(Icons.rocket_launch_rounded, color: Colors.redAccent);
    }
  }
}
