// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CrestImpl _$$CrestImplFromJson(Map<String, dynamic> json) => _$CrestImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      imageBase64: json['imageBase64'] as String,
    );

Map<String, dynamic> _$$CrestImplToJson(_$CrestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'imageBase64': instance.imageBase64,
    };
