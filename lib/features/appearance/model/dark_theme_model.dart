import 'package:equatable/equatable.dart';

class DarkThemeModel extends Equatable {
  DarkThemeModel(this.darkThemePreference, this.title);

  final int darkThemePreference;
  final String title;

  @override
  List<Object?> get props => [];
}
