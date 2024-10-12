// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacilityImpl _$$FacilityImplFromJson(Map<String, dynamic> json) =>
    _$FacilityImpl(
      facilityName: json['facilityName'] as String,
      facilityStatus: json['facilityStatus'] as String,
      facilityLocationUrl: json['facilityLocationUrl'] as String,
      projectOfFacility: json['projectOfFacility'] as String?,
    );

Map<String, dynamic> _$$FacilityImplToJson(_$FacilityImpl instance) =>
    <String, dynamic>{
      'facilityName': instance.facilityName,
      'facilityStatus': instance.facilityStatus,
      'facilityLocationUrl': instance.facilityLocationUrl,
      'projectOfFacility': instance.projectOfFacility,
    };
