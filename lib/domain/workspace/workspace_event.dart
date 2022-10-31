part of 'workspace_bloc.dart';

@freezed
class WorkspaceEvent with _$WorkspaceEvent {
  const factory WorkspaceEvent.started() = _Started;
}