part of 'side_panel_bloc.dart';

@freezed
class SidePanelState with _$SidePanelState {
  const factory SidePanelState(
      {required int position,
      required double sidePanelWidth}) = _SidePanelState;
  factory SidePanelState.initial() =>
      const SidePanelState(position: 0, sidePanelWidth: 250);
}
