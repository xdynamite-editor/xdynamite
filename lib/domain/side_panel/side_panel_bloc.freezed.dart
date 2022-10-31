// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'side_panel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SidePanelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double width) setSidePanelWidth,
    required TResult Function(int position) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double width)? setSidePanelWidth,
    TResult? Function(int position)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double width)? setSidePanelWidth,
    TResult Function(int position)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSidePanelWidth value) setSidePanelWidth,
    required TResult Function(Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetSidePanelWidth value)? setSidePanelWidth,
    TResult? Function(Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSidePanelWidth value)? setSidePanelWidth,
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SidePanelEventCopyWith<$Res> {
  factory $SidePanelEventCopyWith(
          SidePanelEvent value, $Res Function(SidePanelEvent) then) =
      _$SidePanelEventCopyWithImpl<$Res, SidePanelEvent>;
}

/// @nodoc
class _$SidePanelEventCopyWithImpl<$Res, $Val extends SidePanelEvent>
    implements $SidePanelEventCopyWith<$Res> {
  _$SidePanelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetSidePanelWidthCopyWith<$Res> {
  factory _$$SetSidePanelWidthCopyWith(
          _$SetSidePanelWidth value, $Res Function(_$SetSidePanelWidth) then) =
      __$$SetSidePanelWidthCopyWithImpl<$Res>;
  @useResult
  $Res call({double width});
}

/// @nodoc
class __$$SetSidePanelWidthCopyWithImpl<$Res>
    extends _$SidePanelEventCopyWithImpl<$Res, _$SetSidePanelWidth>
    implements _$$SetSidePanelWidthCopyWith<$Res> {
  __$$SetSidePanelWidthCopyWithImpl(
      _$SetSidePanelWidth _value, $Res Function(_$SetSidePanelWidth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
  }) {
    return _then(_$SetSidePanelWidth(
      null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetSidePanelWidth
    with DiagnosticableTreeMixin
    implements SetSidePanelWidth {
  const _$SetSidePanelWidth(this.width);

  @override
  final double width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SidePanelEvent.setSidePanelWidth(width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SidePanelEvent.setSidePanelWidth'))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSidePanelWidth &&
            (identical(other.width, width) || other.width == width));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSidePanelWidthCopyWith<_$SetSidePanelWidth> get copyWith =>
      __$$SetSidePanelWidthCopyWithImpl<_$SetSidePanelWidth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double width) setSidePanelWidth,
    required TResult Function(int position) select,
  }) {
    return setSidePanelWidth(width);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double width)? setSidePanelWidth,
    TResult? Function(int position)? select,
  }) {
    return setSidePanelWidth?.call(width);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double width)? setSidePanelWidth,
    TResult Function(int position)? select,
    required TResult orElse(),
  }) {
    if (setSidePanelWidth != null) {
      return setSidePanelWidth(width);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSidePanelWidth value) setSidePanelWidth,
    required TResult Function(Select value) select,
  }) {
    return setSidePanelWidth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetSidePanelWidth value)? setSidePanelWidth,
    TResult? Function(Select value)? select,
  }) {
    return setSidePanelWidth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSidePanelWidth value)? setSidePanelWidth,
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) {
    if (setSidePanelWidth != null) {
      return setSidePanelWidth(this);
    }
    return orElse();
  }
}

abstract class SetSidePanelWidth implements SidePanelEvent {
  const factory SetSidePanelWidth(final double width) = _$SetSidePanelWidth;

  double get width;
  @JsonKey(ignore: true)
  _$$SetSidePanelWidthCopyWith<_$SetSidePanelWidth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCopyWith<$Res> {
  factory _$$SelectCopyWith(_$Select value, $Res Function(_$Select) then) =
      __$$SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({int position});
}

/// @nodoc
class __$$SelectCopyWithImpl<$Res>
    extends _$SidePanelEventCopyWithImpl<$Res, _$Select>
    implements _$$SelectCopyWith<$Res> {
  __$$SelectCopyWithImpl(_$Select _value, $Res Function(_$Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$Select(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Select with DiagnosticableTreeMixin implements Select {
  const _$Select(this.position);

  @override
  final int position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SidePanelEvent.select(position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SidePanelEvent.select'))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Select &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCopyWith<_$Select> get copyWith =>
      __$$SelectCopyWithImpl<_$Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double width) setSidePanelWidth,
    required TResult Function(int position) select,
  }) {
    return select(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double width)? setSidePanelWidth,
    TResult? Function(int position)? select,
  }) {
    return select?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double width)? setSidePanelWidth,
    TResult Function(int position)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetSidePanelWidth value) setSidePanelWidth,
    required TResult Function(Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetSidePanelWidth value)? setSidePanelWidth,
    TResult? Function(Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetSidePanelWidth value)? setSidePanelWidth,
    TResult Function(Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class Select implements SidePanelEvent {
  const factory Select(final int position) = _$Select;

  int get position;
  @JsonKey(ignore: true)
  _$$SelectCopyWith<_$Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SidePanelState {
  int get position => throw _privateConstructorUsedError;
  double get sidePanelWidth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SidePanelStateCopyWith<SidePanelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SidePanelStateCopyWith<$Res> {
  factory $SidePanelStateCopyWith(
          SidePanelState value, $Res Function(SidePanelState) then) =
      _$SidePanelStateCopyWithImpl<$Res, SidePanelState>;
  @useResult
  $Res call({int position, double sidePanelWidth});
}

/// @nodoc
class _$SidePanelStateCopyWithImpl<$Res, $Val extends SidePanelState>
    implements $SidePanelStateCopyWith<$Res> {
  _$SidePanelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? sidePanelWidth = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      sidePanelWidth: null == sidePanelWidth
          ? _value.sidePanelWidth
          : sidePanelWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SidePanelStateCopyWith<$Res>
    implements $SidePanelStateCopyWith<$Res> {
  factory _$$_SidePanelStateCopyWith(
          _$_SidePanelState value, $Res Function(_$_SidePanelState) then) =
      __$$_SidePanelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, double sidePanelWidth});
}

/// @nodoc
class __$$_SidePanelStateCopyWithImpl<$Res>
    extends _$SidePanelStateCopyWithImpl<$Res, _$_SidePanelState>
    implements _$$_SidePanelStateCopyWith<$Res> {
  __$$_SidePanelStateCopyWithImpl(
      _$_SidePanelState _value, $Res Function(_$_SidePanelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? sidePanelWidth = null,
  }) {
    return _then(_$_SidePanelState(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      sidePanelWidth: null == sidePanelWidth
          ? _value.sidePanelWidth
          : sidePanelWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SidePanelState
    with DiagnosticableTreeMixin
    implements _SidePanelState {
  const _$_SidePanelState(
      {required this.position, required this.sidePanelWidth});

  @override
  final int position;
  @override
  final double sidePanelWidth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SidePanelState(position: $position, sidePanelWidth: $sidePanelWidth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SidePanelState'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('sidePanelWidth', sidePanelWidth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SidePanelState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.sidePanelWidth, sidePanelWidth) ||
                other.sidePanelWidth == sidePanelWidth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, sidePanelWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SidePanelStateCopyWith<_$_SidePanelState> get copyWith =>
      __$$_SidePanelStateCopyWithImpl<_$_SidePanelState>(this, _$identity);
}

abstract class _SidePanelState implements SidePanelState {
  const factory _SidePanelState(
      {required final int position,
      required final double sidePanelWidth}) = _$_SidePanelState;

  @override
  int get position;
  @override
  double get sidePanelWidth;
  @override
  @JsonKey(ignore: true)
  _$$_SidePanelStateCopyWith<_$_SidePanelState> get copyWith =>
      throw _privateConstructorUsedError;
}
