part of 'files_bloc.dart';

@freezed
class FilesEvent with _$FilesEvent {
  const factory FilesEvent.openFile() = OpenFile;
}
