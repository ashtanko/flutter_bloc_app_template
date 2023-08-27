import 'package:equatable/equatable.dart';

import 'models.dart';

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
}
