import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'files_event.dart';
part 'files_state.dart';
part 'files_bloc.freezed.dart';

class FilesBloc extends Bloc<FilesEvent, FilesState> {
  FilesBloc() : super(FilesState.initial()) {
    on<OpenFile>((event, emit) {
      var newList = [...state.openedFiles, event.fileInfo];
      return emit(state.copyWith(openedFiles: newList));
    });
  }
}
