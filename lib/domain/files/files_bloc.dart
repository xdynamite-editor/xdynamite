import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_event.dart';
part 'files_state.dart';
part 'files_bloc.freezed.dart';

class FilesBloc extends Bloc<FilesEvent, FilesState> {
  FilesBloc() : super(FilesState.initial()) {
    on<OpenFile>((event, emit) {
      // Check if the file alreeady opened
      var isOpened = state.openedFiles.any((element) =>
          (element["name"] == event.fileInfo["name"] &&
              element["path"] == event.fileInfo["path"]));

      if (isOpened) {
        return emit(state.copyWith(currentFile: event.fileInfo));
      }
      var newList = [...state.openedFiles, event.fileInfo];
      return emit(
          state.copyWith(openedFiles: newList, currentFile: event.fileInfo));
    });

    on<SelectOpenedFile>((event, emit) {
      return emit(state.copyWith(currentFile: event.fileInfo));
    });
  }
}
