// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Facility _$FacilityFromJson(Map<String, dynamic> json) {
  return _Facility.fromJson(json);
}

/// @nodoc
mixin _$Facility {
  String get facilityName => throw _privateConstructorUsedError;
  String get facilityStatus => throw _privateConstructorUsedError;
  String get facilityLocationUrl => throw _privateConstructorUsedError;
  String? get projectOfFacility => throw _privateConstructorUsedError;

  /// Serializes this Facility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacilityCopyWith<Facility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityCopyWith<$Res> {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) then) =
      _$FacilityCopyWithImpl<$Res, Facility>;
  @useResult
  $Res call(
      {String facilityName,
      String facilityStatus,
      String facilityLocationUrl,
      String? projectOfFacility});
}

/// @nodoc
class _$FacilityCopyWithImpl<$Res, $Val extends Facility>
    implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityName = null,
    Object? facilityStatus = null,
    Object? facilityLocationUrl = null,
    Object? projectOfFacility = freezed,
  }) {
    return _then(_value.copyWith(
      facilityName: null == facilityName
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String,
      facilityStatus: null == facilityStatus
          ? _value.facilityStatus
          : facilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      facilityLocationUrl: null == facilityLocationUrl
          ? _value.facilityLocationUrl
          : facilityLocationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      projectOfFacility: freezed == projectOfFacility
          ? _value.projectOfFacility
          : projectOfFacility // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityImplCopyWith<$Res>
    implements $FacilityCopyWith<$Res> {
  factory _$$FacilityImplCopyWith(
          _$FacilityImpl value, $Res Function(_$FacilityImpl) then) =
      __$$FacilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String facilityName,
      String facilityStatus,
      String facilityLocationUrl,
      String? projectOfFacility});
}

/// @nodoc
class __$$FacilityImplCopyWithImpl<$Res>
    extends _$FacilityCopyWithImpl<$Res, _$FacilityImpl>
    implements _$$FacilityImplCopyWith<$Res> {
  __$$FacilityImplCopyWithImpl(
      _$FacilityImpl _value, $Res Function(_$FacilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityName = null,
    Object? facilityStatus = null,
    Object? facilityLocationUrl = null,
    Object? projectOfFacility = freezed,
  }) {
    return _then(_$FacilityImpl(
      facilityName: null == facilityName
          ? _value.facilityName
          : facilityName // ignore: cast_nullable_to_non_nullable
              as String,
      facilityStatus: null == facilityStatus
          ? _value.facilityStatus
          : facilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      facilityLocationUrl: null == facilityLocationUrl
          ? _value.facilityLocationUrl
          : facilityLocationUrl // ignore: cast_nullable_to_non_nullable
              as String,
      projectOfFacility: freezed == projectOfFacility
          ? _value.projectOfFacility
          : projectOfFacility // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityImpl implements _Facility {
  const _$FacilityImpl(
      {required this.facilityName,
      required this.facilityStatus,
      required this.facilityLocationUrl,
      this.projectOfFacility});

  factory _$FacilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityImplFromJson(json);

  @override
  final String facilityName;
  @override
  final String facilityStatus;
  @override
  final String facilityLocationUrl;
  @override
  final String? projectOfFacility;

  @override
  String toString() {
    return 'Facility(facilityName: $facilityName, facilityStatus: $facilityStatus, facilityLocationUrl: $facilityLocationUrl, projectOfFacility: $projectOfFacility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityImpl &&
            (identical(other.facilityName, facilityName) ||
                other.facilityName == facilityName) &&
            (identical(other.facilityStatus, facilityStatus) ||
                other.facilityStatus == facilityStatus) &&
            (identical(other.facilityLocationUrl, facilityLocationUrl) ||
                other.facilityLocationUrl == facilityLocationUrl) &&
            (identical(other.projectOfFacility, projectOfFacility) ||
                other.projectOfFacility == projectOfFacility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, facilityName, facilityStatus,
      facilityLocationUrl, projectOfFacility);

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityImplCopyWith<_$FacilityImpl> get copyWith =>
      __$$FacilityImplCopyWithImpl<_$FacilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityImplToJson(
      this,
    );
  }
}

abstract class _Facility implements Facility {
  const factory _Facility(
      {required final String facilityName,
      required final String facilityStatus,
      required final String facilityLocationUrl,
      final String? projectOfFacility}) = _$FacilityImpl;

  factory _Facility.fromJson(Map<String, dynamic> json) =
      _$FacilityImpl.fromJson;

  @override
  String get facilityName;
  @override
  String get facilityStatus;
  @override
  String get facilityLocationUrl;
  @override
  String? get projectOfFacility;

  /// Create a copy of Facility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacilityImplCopyWith<_$FacilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
