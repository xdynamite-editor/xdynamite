// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilesEvent {
  Map<String, String> get fileInfo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, String> fileInfo) openFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String> fileInfo)? openFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String> fileInfo)? openFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenFile value) openFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenFile value)? openFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenFile value)? openFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilesEventCopyWith<FilesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesEventCopyWith<$Res> {
  factory $FilesEventCopyWith(
          FilesEvent value, $Res Function(FilesEvent) then) =
      _$FilesEventCopyWithImpl<$Res, FilesEvent>;
  @useResult
  $Res call({Map<String, String> fileInfo});
}

/// @nodoc
class _$FilesEventCopyWithImpl<$Res, $Val extends FilesEvent>
    implements $FilesEventCopyWith<$Res> {
  _$FilesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileInfo = null,
  }) {
    return _then(_value.copyWith(
      fileInfo: null == fileInfo
          ? _value.fileInfo
          : fileInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenFileCopyWith<$Res> implements $FilesEventCopyWith<$Res> {
  factory _$$OpenFileCopyWith(
          _$OpenFile value, $Res Function(_$OpenFile) then) =
      __$$OpenFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> fileInfo});
}

/// @nodoc
class __$$OpenFileCopyWithImpl<$Res>
    extends _$FilesEventCopyWithImpl<$Res, _$OpenFile>
    implements _$$OpenFileCopyWith<$Res> {
  __$$OpenFileCopyWithImpl(_$OpenFile _value, $Res Function(_$OpenFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileInfo = null,
  }) {
    return _then(_$OpenFile(
      null == fileInfo
          ? _value._fileInfo
          : fileInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$OpenFile implements OpenFile {
  _$OpenFile(final Map<String, String> fileInfo) : _fileInfo = fileInfo;

  final Map<String, String> _fileInfo;
  @override
  Map<String, String> get fileInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fileInfo);
  }

  @override
  String toString() {
    return 'FilesEvent.openFile(fileInfo: $fileInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenFile &&
            const DeepCollectionEquality().equals(other._fileInfo, _fileInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fileInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenFileCopyWith<_$OpenFile> get copyWith =>
      __$$OpenFileCopyWithImpl<_$OpenFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, String> fileInfo) openFile,
  }) {
    return openFile(fileInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, String> fileInfo)? openFile,
  }) {
    return openFile?.call(fileInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String> fileInfo)? openFile,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(fileInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenFile value) openFile,
  }) {
    return openFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenFile value)? openFile,
  }) {
    return openFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenFile value)? openFile,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile(this);
    }
    return orElse();
  }
}

abstract class OpenFile implements FilesEvent {
  factory OpenFile(final Map<String, String> fileInfo) = _$OpenFile;

  @override
  Map<String, String> get fileInfo;
  @override
  @JsonKey(ignore: true)
  _$$OpenFileCopyWith<_$OpenFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilesState {
  List<Map<String, String>> get openedFiles =>
      throw _privateConstructorUsedError;
  Map<String, String>? get currentFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilesStateCopyWith<FilesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesStateCopyWith<$Res> {
  factory $FilesStateCopyWith(
          FilesState value, $Res Function(FilesState) then) =
      _$FilesStateCopyWithImpl<$Res, FilesState>;
  @useResult
  $Res call(
      {List<Map<String, String>> openedFiles,
      Map<String, String>? currentFile});
}

/// @nodoc
class _$FilesStateCopyWithImpl<$Res, $Val extends FilesState>
    implements $FilesStateCopyWith<$Res> {
  _$FilesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openedFiles = null,
    Object? currentFile = freezed,
  }) {
    return _then(_value.copyWith(
      openedFiles: null == openedFiles
          ? _value.openedFiles
          : openedFiles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentFile: freezed == currentFile
          ? _value.currentFile
          : currentFile // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilesStateCopyWith<$Res>
    implements $FilesStateCopyWith<$Res> {
  factory _$$_FilesStateCopyWith(
          _$_FilesState value, $Res Function(_$_FilesState) then) =
      __$$_FilesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, String>> openedFiles,
      Map<String, String>? currentFile});
}

/// @nodoc
class __$$_FilesStateCopyWithImpl<$Res>
    extends _$FilesStateCopyWithImpl<$Res, _$_FilesState>
    implements _$$_FilesStateCopyWith<$Res> {
  __$$_FilesStateCopyWithImpl(
      _$_FilesState _value, $Res Function(_$_FilesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openedFiles = null,
    Object? currentFile = freezed,
  }) {
    return _then(_$_FilesState(
      openedFiles: null == openedFiles
          ? _value._openedFiles
          : openedFiles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      currentFile: freezed == currentFile
          ? _value._currentFile
          : currentFile // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$_FilesState implements _FilesState {
  const _$_FilesState(
      {required final List<Map<String, String>> openedFiles,
      final Map<String, String>? currentFile})
      : _openedFiles = openedFiles,
        _currentFile = currentFile;

  final List<Map<String, String>> _openedFiles;
  @override
  List<Map<String, String>> get openedFiles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openedFiles);
  }

  final Map<String, String>? _currentFile;
  @override
  Map<String, String>? get currentFile {
    final value = _currentFile;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FilesState(openedFiles: $openedFiles, currentFile: $currentFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesState &&
            const DeepCollectionEquality()
                .equals(other._openedFiles, _openedFiles) &&
            const DeepCollectionEquality()
                .equals(other._currentFile, _currentFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_openedFiles),
      const DeepCollectionEquality().hash(_currentFile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilesStateCopyWith<_$_FilesState> get copyWith =>
      __$$_FilesStateCopyWithImpl<_$_FilesState>(this, _$identity);
}

abstract class _FilesState implements FilesState {
  const factory _FilesState(
      {required final List<Map<String, String>> openedFiles,
      final Map<String, String>? currentFile}) = _$_FilesState;

  @override
  List<Map<String, String>> get openedFiles;
  @override
  Map<String, String>? get currentFile;
  @override
  @JsonKey(ignore: true)
  _$$_FilesStateCopyWith<_$_FilesState> get copyWith =>
      throw _privateConstructorUsedError;
}
