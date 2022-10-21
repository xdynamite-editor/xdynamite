part of 'files_bloc.dart';

@freezed
class FilesEvent with _$FilesEvent {
  factory FilesEvent.openFile(Map<String, String> fileInfo) = OpenFile;
  factory FilesEvent.selectOpenedFile(Map<String, String> fileInfo) =
      SelectOpenedFile;
}
