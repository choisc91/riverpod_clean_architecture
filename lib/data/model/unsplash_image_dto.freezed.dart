// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unsplash_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UnsplashImageDto _$UnsplashImageDtoFromJson(Map<String, dynamic> json) {
  return _UnsplashImageDto.fromJson(json);
}

/// @nodoc
mixin _$UnsplashImageDto {
  String get id => throw _privateConstructorUsedError;
  UrlsDto get urls => throw _privateConstructorUsedError;
  String? get altDescription => throw _privateConstructorUsedError;

  /// Serializes this UnsplashImageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsplashImageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsplashImageDtoCopyWith<UnsplashImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashImageDtoCopyWith<$Res> {
  factory $UnsplashImageDtoCopyWith(
    UnsplashImageDto value,
    $Res Function(UnsplashImageDto) then,
  ) = _$UnsplashImageDtoCopyWithImpl<$Res, UnsplashImageDto>;
  @useResult
  $Res call({String id, UrlsDto urls, String? altDescription});

  $UrlsDtoCopyWith<$Res> get urls;
}

/// @nodoc
class _$UnsplashImageDtoCopyWithImpl<$Res, $Val extends UnsplashImageDto>
    implements $UnsplashImageDtoCopyWith<$Res> {
  _$UnsplashImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsplashImageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? urls = null,
    Object? altDescription = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            urls: null == urls
                ? _value.urls
                : urls // ignore: cast_nullable_to_non_nullable
                      as UrlsDto,
            altDescription: freezed == altDescription
                ? _value.altDescription
                : altDescription // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of UnsplashImageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlsDtoCopyWith<$Res> get urls {
    return $UrlsDtoCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsplashImageDtoImplCopyWith<$Res>
    implements $UnsplashImageDtoCopyWith<$Res> {
  factory _$$UnsplashImageDtoImplCopyWith(
    _$UnsplashImageDtoImpl value,
    $Res Function(_$UnsplashImageDtoImpl) then,
  ) = __$$UnsplashImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, UrlsDto urls, String? altDescription});

  @override
  $UrlsDtoCopyWith<$Res> get urls;
}

/// @nodoc
class __$$UnsplashImageDtoImplCopyWithImpl<$Res>
    extends _$UnsplashImageDtoCopyWithImpl<$Res, _$UnsplashImageDtoImpl>
    implements _$$UnsplashImageDtoImplCopyWith<$Res> {
  __$$UnsplashImageDtoImplCopyWithImpl(
    _$UnsplashImageDtoImpl _value,
    $Res Function(_$UnsplashImageDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UnsplashImageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? urls = null,
    Object? altDescription = freezed,
  }) {
    return _then(
      _$UnsplashImageDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        urls: null == urls
            ? _value.urls
            : urls // ignore: cast_nullable_to_non_nullable
                  as UrlsDto,
        altDescription: freezed == altDescription
            ? _value.altDescription
            : altDescription // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsplashImageDtoImpl implements _UnsplashImageDto {
  const _$UnsplashImageDtoImpl({
    required this.id,
    required this.urls,
    required this.altDescription,
  });

  factory _$UnsplashImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashImageDtoImplFromJson(json);

  @override
  final String id;
  @override
  final UrlsDto urls;
  @override
  final String? altDescription;

  @override
  String toString() {
    return 'UnsplashImageDto(id: $id, urls: $urls, altDescription: $altDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashImageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, urls, altDescription);

  /// Create a copy of UnsplashImageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashImageDtoImplCopyWith<_$UnsplashImageDtoImpl> get copyWith =>
      __$$UnsplashImageDtoImplCopyWithImpl<_$UnsplashImageDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashImageDtoImplToJson(this);
  }
}

abstract class _UnsplashImageDto implements UnsplashImageDto {
  const factory _UnsplashImageDto({
    required final String id,
    required final UrlsDto urls,
    required final String? altDescription,
  }) = _$UnsplashImageDtoImpl;

  factory _UnsplashImageDto.fromJson(Map<String, dynamic> json) =
      _$UnsplashImageDtoImpl.fromJson;

  @override
  String get id;
  @override
  UrlsDto get urls;
  @override
  String? get altDescription;

  /// Create a copy of UnsplashImageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsplashImageDtoImplCopyWith<_$UnsplashImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UrlsDto _$UrlsDtoFromJson(Map<String, dynamic> json) {
  return _UrlsDto.fromJson(json);
}

/// @nodoc
mixin _$UrlsDto {
  String get small => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;

  /// Serializes this UrlsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsDtoCopyWith<UrlsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsDtoCopyWith<$Res> {
  factory $UrlsDtoCopyWith(UrlsDto value, $Res Function(UrlsDto) then) =
      _$UrlsDtoCopyWithImpl<$Res, UrlsDto>;
  @useResult
  $Res call({String small, String regular, String full});
}

/// @nodoc
class _$UrlsDtoCopyWithImpl<$Res, $Val extends UrlsDto>
    implements $UrlsDtoCopyWith<$Res> {
  _$UrlsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? regular = null,
    Object? full = null,
  }) {
    return _then(
      _value.copyWith(
            small: null == small
                ? _value.small
                : small // ignore: cast_nullable_to_non_nullable
                      as String,
            regular: null == regular
                ? _value.regular
                : regular // ignore: cast_nullable_to_non_nullable
                      as String,
            full: null == full
                ? _value.full
                : full // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UrlsDtoImplCopyWith<$Res> implements $UrlsDtoCopyWith<$Res> {
  factory _$$UrlsDtoImplCopyWith(
    _$UrlsDtoImpl value,
    $Res Function(_$UrlsDtoImpl) then,
  ) = __$$UrlsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String regular, String full});
}

/// @nodoc
class __$$UrlsDtoImplCopyWithImpl<$Res>
    extends _$UrlsDtoCopyWithImpl<$Res, _$UrlsDtoImpl>
    implements _$$UrlsDtoImplCopyWith<$Res> {
  __$$UrlsDtoImplCopyWithImpl(
    _$UrlsDtoImpl _value,
    $Res Function(_$UrlsDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UrlsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? regular = null,
    Object? full = null,
  }) {
    return _then(
      _$UrlsDtoImpl(
        small: null == small
            ? _value.small
            : small // ignore: cast_nullable_to_non_nullable
                  as String,
        regular: null == regular
            ? _value.regular
            : regular // ignore: cast_nullable_to_non_nullable
                  as String,
        full: null == full
            ? _value.full
            : full // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsDtoImpl implements _UrlsDto {
  const _$UrlsDtoImpl({
    required this.small,
    required this.regular,
    required this.full,
  });

  factory _$UrlsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsDtoImplFromJson(json);

  @override
  final String small;
  @override
  final String regular;
  @override
  final String full;

  @override
  String toString() {
    return 'UrlsDto(small: $small, regular: $regular, full: $full)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsDtoImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.full, full) || other.full == full));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, small, regular, full);

  /// Create a copy of UrlsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsDtoImplCopyWith<_$UrlsDtoImpl> get copyWith =>
      __$$UrlsDtoImplCopyWithImpl<_$UrlsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsDtoImplToJson(this);
  }
}

abstract class _UrlsDto implements UrlsDto {
  const factory _UrlsDto({
    required final String small,
    required final String regular,
    required final String full,
  }) = _$UrlsDtoImpl;

  factory _UrlsDto.fromJson(Map<String, dynamic> json) = _$UrlsDtoImpl.fromJson;

  @override
  String get small;
  @override
  String get regular;
  @override
  String get full;

  /// Create a copy of UrlsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsDtoImplCopyWith<_$UrlsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
