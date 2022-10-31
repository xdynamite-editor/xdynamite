import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'side_panel_event.dart';
part 'side_panel_state.dart';
part 'side_panel_bloc.freezed.dart';

class SidePanelBloc extends Bloc<SidePanelEvent, SidePanelState> {
  SidePanelBloc() : super(SidePanelState.initial()) {
    on<Select>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(position: event.position));
    });

    on<SetSidePanelWidth>((event, emit) {
      emit(state.copyWith(sidePanelWidth: event.width));
    });
  }
}
