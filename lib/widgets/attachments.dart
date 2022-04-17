import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/colors.gen.dart';
import 'package:flutter_bloc_app_template/index.dart';

class Attachments extends StatelessWidget {
  const Attachments({Key? key, required this.message, this.onTap})
      : super(key: key);

  final Email message;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final attachments = message.attachments;

    if (attachments.isEmpty) {
      return EmptyWidget();
    }

    return Container(
      height: 24,
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
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.attachmentBorderColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30),
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
                        fontSize: 14,
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
