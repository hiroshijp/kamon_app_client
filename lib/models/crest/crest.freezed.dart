// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Crest _$CrestFromJson(Map<String, dynamic> json) {
  return _Crest.fromJson(json);
}

/// @nodoc
mixin _$Crest {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get imageBase64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrestCopyWith<Crest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrestCopyWith<$Res> {
  factory $CrestCopyWith(Crest value, $Res Function(Crest) then) =
      _$CrestCopyWithImpl<$Res, Crest>;
  @useResult
  $Res call(
      {String id,
      String name,
      double latitude,
      double longitude,
      String imageBase64});
}

/// @nodoc
class _$CrestCopyWithImpl<$Res, $Val extends Crest>
    implements $CrestCopyWith<$Res> {
  _$CrestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? imageBase64 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      imageBase64: null == imageBase64
          ? _value.imageBase64
          : imageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CrestImplCopyWith<$Res> implements $CrestCopyWith<$Res> {
  factory _$$CrestImplCopyWith(
          _$CrestImpl value, $Res Function(_$CrestImpl) then) =
      __$$CrestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double latitude,
      double longitude,
      String imageBase64});
}

/// @nodoc
class __$$CrestImplCopyWithImpl<$Res>
    extends _$CrestCopyWithImpl<$Res, _$CrestImpl>
    implements _$$CrestImplCopyWith<$Res> {
  __$$CrestImplCopyWithImpl(
      _$CrestImpl _value, $Res Function(_$CrestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? imageBase64 = null,
  }) {
    return _then(_$CrestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      imageBase64: null == imageBase64
          ? _value.imageBase64
          : imageBase64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CrestImpl implements _Crest {
  const _$CrestImpl(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.imageBase64});

  factory _$CrestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrestImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String imageBase64;

  @override
  String toString() {
    return 'Crest(id: $id, name: $name, latitude: $latitude, longitude: $longitude, imageBase64: $imageBase64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.imageBase64, imageBase64) ||
                other.imageBase64 == imageBase64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, latitude, longitude, imageBase64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrestImplCopyWith<_$CrestImpl> get copyWith =>
      __$$CrestImplCopyWithImpl<_$CrestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrestImplToJson(
      this,
    );
  }
}

abstract class _Crest implements Crest {
  const factory _Crest(
      {required final String id,
      required final String name,
      required final double latitude,
      required final double longitude,
      required final String imageBase64}) = _$CrestImpl;

  factory _Crest.fromJson(Map<String, dynamic> json) = _$CrestImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get imageBase64;
  @override
  @JsonKey(ignore: true)
  _$$CrestImplCopyWith<_$CrestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
