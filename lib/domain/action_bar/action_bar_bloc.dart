import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_bar_event.dart';
part 'action_bar_state.dart';
part 'action_bar_bloc.freezed.dart';

class ActionBarBloc extends Bloc<ActionBarEvent, ActionBarState> {
  ActionBarBloc() : super(ActionBarState.initial()) {
    on<SetAppMenu>((event, emit) {
      emit(state.copyWith(isAppMenuOpen: event.isAppMenuOpen));
    });
  }
}
