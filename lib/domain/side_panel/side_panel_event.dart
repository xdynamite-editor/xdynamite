part of 'side_panel_bloc.dart';

@freezed
class SidePanelEvent with _$SidePanelEvent {
  const factory SidePanelEvent.select(int position) = Select;
}
