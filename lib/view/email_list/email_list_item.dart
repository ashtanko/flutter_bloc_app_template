import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class EmailListItem extends StatelessWidget {
  const EmailListItem({Key? key, required this.email, this.onTap})
      : super(key: key);

  final Email email;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.normal,
            horizontal: Paddings.normal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Separator.spaceChildren(
              space: Space.mediumSmall,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: IconSizes.avatar,
                      width: IconSizes.avatar,
                      child: Center(
                        child: ItemAvatar(
                          email: email,
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
                                AppIcons.attachmentChevronsRight,
                                Separator.divider(indent: 5),
                                Text(
                                  email.sender,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: FontSizes.subtitle2,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                            Text(
                              email.subject,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: FontSizes.subtitle2,
                                  ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              email.messagePreview,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontSize: FontSizes.subtitle2,
                                  ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Separator.spacer(Space.small),
                            Attachments(
                              email: email,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(email.getFormattedDate()),
                        Separator.spacer(Space.large),
                        FavoriteIcon(
                          message: email,
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
