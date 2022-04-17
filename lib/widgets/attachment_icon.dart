import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/assets.gen.dart';
import 'package:flutter_bloc_app_template/index.dart';

class AttachmentIcon extends StatelessWidget {
  const AttachmentIcon({Key? key, required this.attachment, this.onTap})
      : super(key: key);

  final Attachment attachment;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return attachment.type == AttachmentType.doc
        ? Assets.images.fileDoc.svg()
        : Assets.images.filePdf.svg();
  }
}
