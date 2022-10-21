part of 'files_bloc.dart';

@freezed
class FilesState with _$FilesState {
  const factory FilesState(
      {required List<Map<String, String>> openedFiles,
      Map<String, String>? currentFile}) = _FilesState;
  factory FilesState.initial() => const FilesState(openedFiles: []);
}
