// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ExamEntity> get exams => throw _privateConstructorUsedError;
  bool get hasReachEnd => throw _privateConstructorUsedError;

  /// Create a copy of ExamListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamListStateCopyWith<ExamListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamListStateCopyWith<$Res> {
  factory $ExamListStateCopyWith(
          ExamListState value, $Res Function(ExamListState) then) =
      _$ExamListStateCopyWithImpl<$Res, ExamListState>;
  @useResult
  $Res call({bool isLoading, List<ExamEntity> exams, bool hasReachEnd});
}

/// @nodoc
class _$ExamListStateCopyWithImpl<$Res, $Val extends ExamListState>
    implements $ExamListStateCopyWith<$Res> {
  _$ExamListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exams = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exams: null == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<ExamEntity>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamListStateImplCopyWith<$Res>
    implements $ExamListStateCopyWith<$Res> {
  factory _$$ExamListStateImplCopyWith(
          _$ExamListStateImpl value, $Res Function(_$ExamListStateImpl) then) =
      __$$ExamListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ExamEntity> exams, bool hasReachEnd});
}

/// @nodoc
class __$$ExamListStateImplCopyWithImpl<$Res>
    extends _$ExamListStateCopyWithImpl<$Res, _$ExamListStateImpl>
    implements _$$ExamListStateImplCopyWith<$Res> {
  __$$ExamListStateImplCopyWithImpl(
      _$ExamListStateImpl _value, $Res Function(_$ExamListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exams = null,
    Object? hasReachEnd = null,
  }) {
    return _then(_$ExamListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<ExamEntity>,
      hasReachEnd: null == hasReachEnd
          ? _value.hasReachEnd
          : hasReachEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExamListStateImpl implements _ExamListState {
  _$ExamListStateImpl(
      {this.isLoading = false,
      final List<ExamEntity> exams = const [],
      this.hasReachEnd = false})
      : _exams = exams;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ExamEntity> _exams;
  @override
  @JsonKey()
  List<ExamEntity> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  @override
  @JsonKey()
  final bool hasReachEnd;

  @override
  String toString() {
    return 'ExamListState(isLoading: $isLoading, exams: $exams, hasReachEnd: $hasReachEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            (identical(other.hasReachEnd, hasReachEnd) ||
                other.hasReachEnd == hasReachEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_exams), hasReachEnd);

  /// Create a copy of ExamListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamListStateImplCopyWith<_$ExamListStateImpl> get copyWith =>
      __$$ExamListStateImplCopyWithImpl<_$ExamListStateImpl>(this, _$identity);
}

abstract class _ExamListState implements ExamListState {
  factory _ExamListState(
      {final bool isLoading,
      final List<ExamEntity> exams,
      final bool hasReachEnd}) = _$ExamListStateImpl;

  @override
  bool get isLoading;
  @override
  List<ExamEntity> get exams;
  @override
  bool get hasReachEnd;

  /// Create a copy of ExamListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamListStateImplCopyWith<_$ExamListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
