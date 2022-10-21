part of 'action_bar_bloc.dart';

@freezed
class ActionBarEvent with _$ActionBarEvent {
  const factory ActionBarEvent.setAppMenu(bool isAppMenuOpen) = SetAppMenu;
}
