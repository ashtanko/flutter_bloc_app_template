import 'package:flutter_bloc_app_template/data/storage.dart';
import 'package:flutter_bloc_app_template/models/email.dart';

const _delay = Duration(milliseconds: 3000);

class EmailListRepository {
  Future<List<Email>> loadData() {
    emailList.sort((a, b) {
      return b.date.compareTo(a.date);
    });

    return Future.delayed(_delay, () => emailList);
  }
}
