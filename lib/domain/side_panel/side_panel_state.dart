part of 'side_panel_bloc.dart';

@freezed
class SidePanelState with _$SidePanelState {
  const factory SidePanelState({required int position}) = _SidePanelState;
  factory SidePanelState.initial() => SidePanelState(position: 0);
}
