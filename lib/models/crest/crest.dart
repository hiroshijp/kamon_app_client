import 'package:freezed_annotation/freezed_annotation.dart';

part 'crest.freezed.dart';
part 'crest.g.dart';

@freezed
class Crest with _$Crest{
  
  const factory Crest({
    required String id,
    required String name,
    required double latitude,
    required double longitude,
    required String imageBase64,
  }) = _Crest;

  factory Crest.fromJson(Map<String, dynamic> json) => _$CrestFromJson(json);
}
