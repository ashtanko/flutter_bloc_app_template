import 'package:flutter_bloc_app_template/index.dart';

final mockEmails = [
  Email(
    sender: 'Ralph Edwards',
    subject: 'The results to our user testing',
    messagePreview: 'What is the progress on that task?',
    isFavorite: false,
    date: DateTime.parse('2022-04-10 20:18:04Z'),
    image:
        'https://external-preview.redd.it/STUmd55tKPrA-gq3y2wqicFTkWL-7oUij0SazqkGylE.jpg?auto=webp&s=6b1cd0e4976a852c9a805cf54a7bb7a19d169063',
    attachments: [],
  ),
  Email(
    sender: 'Eleanor Pena',
    subject: 'Some notes',
    messagePreview: 'Yeah! You are right.',
    isFavorite: true,
    date: DateTime.parse('2022-04-09 18:18:04Z'),
    image:
        'https://i.pinimg.com/originals/f5/c3/2f/f5c32f69aa941b6fc529d193035ccf86.jpg',
    attachments: [],
  ),
  Email(
    sender: 'Leslie Alexander',
    subject: 'Your account with us',
    messagePreview: "What's the progress on that task?",
    isFavorite: false,
    date: DateTime.now(),
    image:
        'https://m.media-amazon.com/images/M/MV5BMTE0NjYyNjQ2NDheQTJeQWpwZ15BbWU4MDk0MTM0ODUz._V1_.jpg',
    attachments: [
      Attachment(AttachmentType.doc, 'cv'),
      Attachment(AttachmentType.pdf, 'payment'),
    ],
  ),
  Email(
    sender: 'Jenny Wilson',
    subject: 'The results to our user testing',
    messagePreview: 'I hope it goes well.',
    isFavorite: false,
    date: DateTime.parse('2022-03-15 12:18:04Z'),
    image:
        'https://i.pinimg.com/originals/0b/51/22/0b51226bbb02062695d644030b81f88c.jpg',
    attachments: [
      Attachment(AttachmentType.doc, 'recipe'),
    ],
  ),
  Email(
    sender: 'Cameron Williamson',
    subject: "Don't make this bad",
    messagePreview: "Yeah! You're right.",
    isFavorite: true,
    date: DateTime.parse('2022-02-01 14:18:04Z'),
    image: 'https://www.gdnonline.com/gdnimages/20161122/201611221138141.JPG',
    attachments: [],
  ),
  Email(
    sender: 'No Name',
    subject: 'Sure',
    messagePreview: 'Ok!',
    isFavorite: true,
    date: DateTime.parse('2022-01-01 09:18:04Z'),
    image: '',
    attachments: [],
  ),
];
