import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workspace_event.dart';
part 'workspace_state.dart';
part 'workspace_bloc.freezed.dart';

class WorkspaceBloc extends Bloc<WorkspaceEvent, WorkspaceState> {
  WorkspaceBloc() : super(_Initial()) {
    on<WorkspaceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
