import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

enum AttachmentType { pdf, doc }

class Attachment {
  Attachment(this.type, this.name);

  final AttachmentType type;
  final String name;
}

class Email extends Equatable {
  Email({
    required this.sender,
    required this.subject,
    required this.messagePreview,
    required this.isFavorite,
    required this.date,
    required this.image,
    required this.attachments,
  });

  final String sender;
  final String subject;
  final String messagePreview;
  final bool isFavorite;
  final DateTime date;
  final String image;
  final List<Attachment> attachments;

  @override
  List<Object?> get props => [
        sender,
        subject,
        messagePreview,
        isFavorite,
        date,
        image,
        attachments,
      ];

  String getFormattedDate() {
    final now = DateTime.now();
    if (now.difference(date).inDays > 0) {
      final formatter = DateFormat('MMM dd');

      return formatter.format(date);
    } else {
      return DateFormat.jm().format(date);
    }
  }

  String getFormattedName() {
    if (sender.isEmpty) {
      return 'N/A';
    }
    final split = sender.split(' ');

    return split.length > 1
        ? '${split[0][0].toUpperCase()}${split[1][0].toUpperCase()}'
        : split.first[0].toUpperCase();
  }
}
