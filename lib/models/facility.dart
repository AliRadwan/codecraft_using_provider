
import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility.freezed.dart';
part 'facility.g.dart';

@freezed
class Facility with _$Facility {
  const factory Facility({
    required String facilityName,
    required String facilityStatus,
    required String facilityLocationUrl,
     String? projectOfFacility
  }) =_Facility;

  factory Facility.fromJson(Map<String ,dynamic> json) => _$FacilityFromJson(json);
}