// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchUiState {
  List<UnsplashImage> get images => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  UnsplashImage? get selectedImage => throw _privateConstructorUsedError;

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUiStateCopyWith<SearchUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUiStateCopyWith<$Res> {
  factory $SearchUiStateCopyWith(
    SearchUiState value,
    $Res Function(SearchUiState) then,
  ) = _$SearchUiStateCopyWithImpl<$Res, SearchUiState>;
  @useResult
  $Res call({
    List<UnsplashImage> images,
    String query,
    bool isLoading,
    bool hasReachedEnd,
    String? errorMessage,
    UnsplashImage? selectedImage,
  });
}

/// @nodoc
class _$SearchUiStateCopyWithImpl<$Res, $Val extends SearchUiState>
    implements $SearchUiStateCopyWith<$Res> {
  _$SearchUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? query = null,
    Object? isLoading = null,
    Object? hasReachedEnd = null,
    Object? errorMessage = freezed,
    Object? selectedImage = freezed,
  }) {
    return _then(
      _value.copyWith(
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<UnsplashImage>,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasReachedEnd: null == hasReachedEnd
                ? _value.hasReachedEnd
                : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedImage: freezed == selectedImage
                ? _value.selectedImage
                : selectedImage // ignore: cast_nullable_to_non_nullable
                      as UnsplashImage?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchUiStateImplCopyWith<$Res>
    implements $SearchUiStateCopyWith<$Res> {
  factory _$$SearchUiStateImplCopyWith(
    _$SearchUiStateImpl value,
    $Res Function(_$SearchUiStateImpl) then,
  ) = __$$SearchUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<UnsplashImage> images,
    String query,
    bool isLoading,
    bool hasReachedEnd,
    String? errorMessage,
    UnsplashImage? selectedImage,
  });
}

/// @nodoc
class __$$SearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$SearchUiStateImpl>
    implements _$$SearchUiStateImplCopyWith<$Res> {
  __$$SearchUiStateImplCopyWithImpl(
    _$SearchUiStateImpl _value,
    $Res Function(_$SearchUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? query = null,
    Object? isLoading = null,
    Object? hasReachedEnd = null,
    Object? errorMessage = freezed,
    Object? selectedImage = freezed,
  }) {
    return _then(
      _$SearchUiStateImpl(
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<UnsplashImage>,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasReachedEnd: null == hasReachedEnd
            ? _value.hasReachedEnd
            : hasReachedEnd // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedImage: freezed == selectedImage
            ? _value.selectedImage
            : selectedImage // ignore: cast_nullable_to_non_nullable
                  as UnsplashImage?,
      ),
    );
  }
}

/// @nodoc

class _$SearchUiStateImpl implements _SearchUiState {
  const _$SearchUiStateImpl({
    final List<UnsplashImage> images = const [],
    this.query = '',
    this.isLoading = false,
    this.hasReachedEnd = false,
    this.errorMessage,
    this.selectedImage,
  }) : _images = images;

  final List<UnsplashImage> _images;
  @override
  @JsonKey()
  List<UnsplashImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  final String? errorMessage;
  @override
  final UnsplashImage? selectedImage;

  @override
  String toString() {
    return 'SearchUiState(images: $images, query: $query, isLoading: $isLoading, hasReachedEnd: $hasReachedEnd, errorMessage: $errorMessage, selectedImage: $selectedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUiStateImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_images),
    query,
    isLoading,
    hasReachedEnd,
    errorMessage,
    selectedImage,
  );

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUiStateImplCopyWith<_$SearchUiStateImpl> get copyWith =>
      __$$SearchUiStateImplCopyWithImpl<_$SearchUiStateImpl>(this, _$identity);
}

abstract class _SearchUiState implements SearchUiState {
  const factory _SearchUiState({
    final List<UnsplashImage> images,
    final String query,
    final bool isLoading,
    final bool hasReachedEnd,
    final String? errorMessage,
    final UnsplashImage? selectedImage,
  }) = _$SearchUiStateImpl;

  @override
  List<UnsplashImage> get images;
  @override
  String get query;
  @override
  bool get isLoading;
  @override
  bool get hasReachedEnd;
  @override
  String? get errorMessage;
  @override
  UnsplashImage? get selectedImage;

  /// Create a copy of SearchUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUiStateImplCopyWith<_$SearchUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
