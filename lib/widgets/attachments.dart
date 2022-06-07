import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/colors.gen.dart';
import 'package:flutter_bloc_app_template/index.dart';

class Attachments extends StatelessWidget {
  const Attachments({Key? key, required this.email, this.onTap})
      : super(key: key);

  final Email email;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final attachments = email.attachments;

    if (attachments.isEmpty) {
      return EmptyWidget();
    }

    return Container(
      height: ContainerSizes.kAttachmentHeight,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        separatorBuilder: (context, index) {
          return Separator.spacer(Space.small);
        },
        itemCount: attachments.length,
        itemBuilder: (context, index) {
          final attachment = attachments[index];

          return InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(25),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.attachmentBorderColor,
                  width: 1,
                ),
                borderRadius:
                    BorderRadius.circular(RadiusSize.kAttachmentBorderRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: Space.mediumSmall,
                  right: Space.mediumSmall,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AttachmentIcon(attachment: attachment),
                    Separator.spacer(Space.superSmall),
                    Text(
                      attachment.name,
                      style: const TextStyle(
                        fontSize: FontSizes.subtitle2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
