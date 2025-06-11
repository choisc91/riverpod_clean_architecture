// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnsplashImageDtoImpl _$$UnsplashImageDtoImplFromJson(
  Map<String, dynamic> json,
) => _$UnsplashImageDtoImpl(
  id: json['id'] as String,
  urls: UrlsDto.fromJson(json['urls'] as Map<String, dynamic>),
  altDescription: json['altDescription'] as String?,
);

Map<String, dynamic> _$$UnsplashImageDtoImplToJson(
  _$UnsplashImageDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'urls': instance.urls,
  'altDescription': instance.altDescription,
};

_$UrlsDtoImpl _$$UrlsDtoImplFromJson(Map<String, dynamic> json) =>
    _$UrlsDtoImpl(
      small: json['small'] as String,
      regular: json['regular'] as String,
      full: json['full'] as String,
    );

Map<String, dynamic> _$$UrlsDtoImplToJson(_$UrlsDtoImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'regular': instance.regular,
      'full': instance.full,
    };
