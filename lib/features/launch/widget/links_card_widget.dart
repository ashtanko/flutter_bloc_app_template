import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/animated_link_button_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/launch/links_resource.dart';

class LinksCardWidget extends StatelessWidget {
  const LinksCardWidget({super.key, required this.links});

  final LinksResource links;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = S.of(context);

    final linkItems = [
      if (links.videoLink != null)
        {
          'label': loc.watchVideo,
          'url': links.videoLink!,
          'icon': Icons.play_circle_filled,
          'color': Colors.red
        },
      if (links.wikipedia != null)
        {
          'label': loc.wikipedia,
          'url': links.wikipedia!,
          'icon': Icons.book,
          'color': Colors.blue
        },
      if (links.articleLink != null)
        {
          'label': loc.article,
          'url': links.articleLink!,
          'icon': Icons.article,
          'color': Colors.green
        },
      if (links.redditLaunch != null)
        {
          'label': loc.reddit,
          'url': links.redditLaunch!,
          'icon': Icons.forum,
          'color': Colors.orange
        },
      if (links.presskit != null)
        {
          'label': loc.pressKit,
          'url': links.presskit!,
          'icon': Icons.description,
          'color': Colors.purple
        },
    ];

    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
              theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.link, color: theme.colorScheme.primary),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    loc.linksResources,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: linkItems.map((item) {
                  return AnimatedLinkButtonWidget(
                    label: item['label'] as String,
                    url: item['url'] as String,
                    icon: item['icon'] as IconData,
                    color: item['color'] as Color,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
