// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'action_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActionBarEvent {
  bool get isAppMenuOpen => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAppMenuOpen) setAppMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAppMenuOpen)? setAppMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAppMenuOpen)? setAppMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetAppMenu value) setAppMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetAppMenu value)? setAppMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetAppMenu value)? setAppMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionBarEventCopyWith<ActionBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionBarEventCopyWith<$Res> {
  factory $ActionBarEventCopyWith(
          ActionBarEvent value, $Res Function(ActionBarEvent) then) =
      _$ActionBarEventCopyWithImpl<$Res, ActionBarEvent>;
  @useResult
  $Res call({bool isAppMenuOpen});
}

/// @nodoc
class _$ActionBarEventCopyWithImpl<$Res, $Val extends ActionBarEvent>
    implements $ActionBarEventCopyWith<$Res> {
  _$ActionBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAppMenuOpen = null,
  }) {
    return _then(_value.copyWith(
      isAppMenuOpen: null == isAppMenuOpen
          ? _value.isAppMenuOpen
          : isAppMenuOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetAppMenuCopyWith<$Res>
    implements $ActionBarEventCopyWith<$Res> {
  factory _$$SetAppMenuCopyWith(
          _$SetAppMenu value, $Res Function(_$SetAppMenu) then) =
      __$$SetAppMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAppMenuOpen});
}

/// @nodoc
class __$$SetAppMenuCopyWithImpl<$Res>
    extends _$ActionBarEventCopyWithImpl<$Res, _$SetAppMenu>
    implements _$$SetAppMenuCopyWith<$Res> {
  __$$SetAppMenuCopyWithImpl(
      _$SetAppMenu _value, $Res Function(_$SetAppMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAppMenuOpen = null,
  }) {
    return _then(_$SetAppMenu(
      null == isAppMenuOpen
          ? _value.isAppMenuOpen
          : isAppMenuOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetAppMenu implements SetAppMenu {
  const _$SetAppMenu(this.isAppMenuOpen);

  @override
  final bool isAppMenuOpen;

  @override
  String toString() {
    return 'ActionBarEvent.setAppMenu(isAppMenuOpen: $isAppMenuOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAppMenu &&
            (identical(other.isAppMenuOpen, isAppMenuOpen) ||
                other.isAppMenuOpen == isAppMenuOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAppMenuOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAppMenuCopyWith<_$SetAppMenu> get copyWith =>
      __$$SetAppMenuCopyWithImpl<_$SetAppMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAppMenuOpen) setAppMenu,
  }) {
    return setAppMenu(isAppMenuOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAppMenuOpen)? setAppMenu,
  }) {
    return setAppMenu?.call(isAppMenuOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAppMenuOpen)? setAppMenu,
    required TResult orElse(),
  }) {
    if (setAppMenu != null) {
      return setAppMenu(isAppMenuOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetAppMenu value) setAppMenu,
  }) {
    return setAppMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetAppMenu value)? setAppMenu,
  }) {
    return setAppMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetAppMenu value)? setAppMenu,
    required TResult orElse(),
  }) {
    if (setAppMenu != null) {
      return setAppMenu(this);
    }
    return orElse();
  }
}

abstract class SetAppMenu implements ActionBarEvent {
  const factory SetAppMenu(final bool isAppMenuOpen) = _$SetAppMenu;

  @override
  bool get isAppMenuOpen;
  @override
  @JsonKey(ignore: true)
  _$$SetAppMenuCopyWith<_$SetAppMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActionBarState {
  bool get isAppMenuOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionBarStateCopyWith<ActionBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionBarStateCopyWith<$Res> {
  factory $ActionBarStateCopyWith(
          ActionBarState value, $Res Function(ActionBarState) then) =
      _$ActionBarStateCopyWithImpl<$Res, ActionBarState>;
  @useResult
  $Res call({bool isAppMenuOpen});
}

/// @nodoc
class _$ActionBarStateCopyWithImpl<$Res, $Val extends ActionBarState>
    implements $ActionBarStateCopyWith<$Res> {
  _$ActionBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAppMenuOpen = null,
  }) {
    return _then(_value.copyWith(
      isAppMenuOpen: null == isAppMenuOpen
          ? _value.isAppMenuOpen
          : isAppMenuOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionBarStateCopyWith<$Res>
    implements $ActionBarStateCopyWith<$Res> {
  factory _$$_ActionBarStateCopyWith(
          _$_ActionBarState value, $Res Function(_$_ActionBarState) then) =
      __$$_ActionBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAppMenuOpen});
}

/// @nodoc
class __$$_ActionBarStateCopyWithImpl<$Res>
    extends _$ActionBarStateCopyWithImpl<$Res, _$_ActionBarState>
    implements _$$_ActionBarStateCopyWith<$Res> {
  __$$_ActionBarStateCopyWithImpl(
      _$_ActionBarState _value, $Res Function(_$_ActionBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAppMenuOpen = null,
  }) {
    return _then(_$_ActionBarState(
      isAppMenuOpen: null == isAppMenuOpen
          ? _value.isAppMenuOpen
          : isAppMenuOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ActionBarState implements _ActionBarState {
  const _$_ActionBarState({required this.isAppMenuOpen});

  @override
  final bool isAppMenuOpen;

  @override
  String toString() {
    return 'ActionBarState(isAppMenuOpen: $isAppMenuOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionBarState &&
            (identical(other.isAppMenuOpen, isAppMenuOpen) ||
                other.isAppMenuOpen == isAppMenuOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAppMenuOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionBarStateCopyWith<_$_ActionBarState> get copyWith =>
      __$$_ActionBarStateCopyWithImpl<_$_ActionBarState>(this, _$identity);
}

abstract class _ActionBarState implements ActionBarState {
  const factory _ActionBarState({required final bool isAppMenuOpen}) =
      _$_ActionBarState;

  @override
  bool get isAppMenuOpen;
  @override
  @JsonKey(ignore: true)
  _$$_ActionBarStateCopyWith<_$_ActionBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
