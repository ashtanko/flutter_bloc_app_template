import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/assets.gen.dart';
import 'package:flutter_bloc_app_template/index.dart';

class EmailListItem extends StatelessWidget {
  const EmailListItem({Key? key, required this.message, this.onTap})
      : super(key: key);

  final Email message;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Separator.spaceChildren(
              space: 8,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: ItemAvatar(
                          message: message,
                        ),
                      ),
                    ),
                    Separator.spacer(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Separator.spaceChildren(
                          space: Space.superSmall,
                          children: [
                            Row(
                              children: [
                                Assets.images.chevronsRight.svg(),
                                Separator.divider(indent: 5),
                                Text(
                                  message.sender,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                            Text(
                              message.subject,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              message.messagePreview,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontSize: 14,
                                  ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Separator.spacer(Space.small),
                            Attachments(
                              message: message,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(message.getFormattedDate()),
                        Separator.spacer(Space.large),
                        FavoriteIcon(
                          message: message,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
