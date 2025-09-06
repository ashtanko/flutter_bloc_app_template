// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkPayloadModel _$NetworkPayloadModelFromJson(Map<String, dynamic> json) =>
    _NetworkPayloadModel(
      payloadId: json['payload_id'] as String?,
      noradId: (json['norad_id'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      reused: json['reused'] as bool?,
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nationality: json['nationality'] as String?,
      manufacturer: json['manufacturer'] as String?,
      payloadType: json['payload_type'] as String?,
      payloadMassKg: (json['payload_mass_kg'] as num?)?.toInt(),
      payloadMassLbs: (json['payload_mass_lbs'] as num?)?.toInt(),
      orbit: json['orbit'] as String?,
    );

Map<String, dynamic> _$NetworkPayloadModelToJson(
        _NetworkPayloadModel instance) =>
    <String, dynamic>{
      'payload_id': instance.payloadId,
      'norad_id': instance.noradId,
      'reused': instance.reused,
      'customers': instance.customers,
      'nationality': instance.nationality,
      'manufacturer': instance.manufacturer,
      'payload_type': instance.payloadType,
      'payload_mass_kg': instance.payloadMassKg,
      'payload_mass_lbs': instance.payloadMassLbs,
      'orbit': instance.orbit,
    };
