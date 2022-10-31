part of 'action_bar_bloc.dart';

@freezed
class ActionBarState with _$ActionBarState {
  const factory ActionBarState({required bool isAppMenuOpen}) = _ActionBarState;
  factory ActionBarState.initial() =>
      const ActionBarState(isAppMenuOpen: false);
}
