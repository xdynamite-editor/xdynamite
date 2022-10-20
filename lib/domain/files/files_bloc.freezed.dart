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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? openFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openFile,
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
}

/// @nodoc
abstract class $FilesEventCopyWith<$Res> {
  factory $FilesEventCopyWith(
          FilesEvent value, $Res Function(FilesEvent) then) =
      _$FilesEventCopyWithImpl<$Res, FilesEvent>;
}

/// @nodoc
class _$FilesEventCopyWithImpl<$Res, $Val extends FilesEvent>
    implements $FilesEventCopyWith<$Res> {
  _$FilesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OpenFileCopyWith<$Res> {
  factory _$$OpenFileCopyWith(
          _$OpenFile value, $Res Function(_$OpenFile) then) =
      __$$OpenFileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenFileCopyWithImpl<$Res>
    extends _$FilesEventCopyWithImpl<$Res, _$OpenFile>
    implements _$$OpenFileCopyWith<$Res> {
  __$$OpenFileCopyWithImpl(_$OpenFile _value, $Res Function(_$OpenFile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenFile implements OpenFile {
  const _$OpenFile();

  @override
  String toString() {
    return 'FilesEvent.openFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenFile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openFile,
  }) {
    return openFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? openFile,
  }) {
    return openFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openFile,
    required TResult orElse(),
  }) {
    if (openFile != null) {
      return openFile();
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
  const factory OpenFile() = _$OpenFile;
}

/// @nodoc
mixin _$FilesState {
  List<Map<String, String>> get openedFiles =>
      throw _privateConstructorUsedError;

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
  $Res call({List<Map<String, String>> openedFiles});
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
  }) {
    return _then(_value.copyWith(
      openedFiles: null == openedFiles
          ? _value.openedFiles
          : openedFiles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
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
  $Res call({List<Map<String, String>> openedFiles});
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
  }) {
    return _then(_$_FilesState(
      openedFiles: null == openedFiles
          ? _value._openedFiles
          : openedFiles // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$_FilesState implements _FilesState {
  const _$_FilesState({required final List<Map<String, String>> openedFiles})
      : _openedFiles = openedFiles;

  final List<Map<String, String>> _openedFiles;
  @override
  List<Map<String, String>> get openedFiles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openedFiles);
  }

  @override
  String toString() {
    return 'FilesState(openedFiles: $openedFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesState &&
            const DeepCollectionEquality()
                .equals(other._openedFiles, _openedFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_openedFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilesStateCopyWith<_$_FilesState> get copyWith =>
      __$$_FilesStateCopyWithImpl<_$_FilesState>(this, _$identity);
}

abstract class _FilesState implements FilesState {
  const factory _FilesState(
      {required final List<Map<String, String>> openedFiles}) = _$_FilesState;

  @override
  List<Map<String, String>> get openedFiles;
  @override
  @JsonKey(ignore: true)
  _$$_FilesStateCopyWith<_$_FilesState> get copyWith =>
      throw _privateConstructorUsedError;
}
