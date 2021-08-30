// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reddit_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditMedia _$RedditMediaFromJson(Map<String, dynamic> json) {
  return _RedditMedia.fromJson(json);
}

/// @nodoc
class _$RedditMediaTearOff {
  const _$RedditMediaTearOff();

  _RedditMedia call(
      {required String type, required Map<String, Object?> oembed}) {
    return _RedditMedia(
      type: type,
      oembed: oembed,
    );
  }

  RedditMedia fromJson(Map<String, Object> json) {
    return RedditMedia.fromJson(json);
  }
}

/// @nodoc
const $RedditMedia = _$RedditMediaTearOff();

/// @nodoc
mixin _$RedditMedia {
  String get type => throw _privateConstructorUsedError;
  Map<String, Object?> get oembed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditMediaCopyWith<RedditMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditMediaCopyWith<$Res> {
  factory $RedditMediaCopyWith(
          RedditMedia value, $Res Function(RedditMedia) then) =
      _$RedditMediaCopyWithImpl<$Res>;
  $Res call({String type, Map<String, Object?> oembed});
}

/// @nodoc
class _$RedditMediaCopyWithImpl<$Res> implements $RedditMediaCopyWith<$Res> {
  _$RedditMediaCopyWithImpl(this._value, this._then);

  final RedditMedia _value;
  // ignore: unused_field
  final $Res Function(RedditMedia) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? oembed = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      oembed: oembed == freezed
          ? _value.oembed
          : oembed // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
abstract class _$RedditMediaCopyWith<$Res>
    implements $RedditMediaCopyWith<$Res> {
  factory _$RedditMediaCopyWith(
          _RedditMedia value, $Res Function(_RedditMedia) then) =
      __$RedditMediaCopyWithImpl<$Res>;
  @override
  $Res call({String type, Map<String, Object?> oembed});
}

/// @nodoc
class __$RedditMediaCopyWithImpl<$Res> extends _$RedditMediaCopyWithImpl<$Res>
    implements _$RedditMediaCopyWith<$Res> {
  __$RedditMediaCopyWithImpl(
      _RedditMedia _value, $Res Function(_RedditMedia) _then)
      : super(_value, (v) => _then(v as _RedditMedia));

  @override
  _RedditMedia get _value => super._value as _RedditMedia;

  @override
  $Res call({
    Object? type = freezed,
    Object? oembed = freezed,
  }) {
    return _then(_RedditMedia(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      oembed: oembed == freezed
          ? _value.oembed
          : oembed // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditMedia implements _RedditMedia {
  _$_RedditMedia({required this.type, required this.oembed});

  factory _$_RedditMedia.fromJson(Map<String, dynamic> json) =>
      _$$_RedditMediaFromJson(json);

  @override
  final String type;
  @override
  final Map<String, Object?> oembed;

  @override
  String toString() {
    return 'RedditMedia(type: $type, oembed: $oembed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditMedia &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.oembed, oembed) ||
                const DeepCollectionEquality().equals(other.oembed, oembed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(oembed);

  @JsonKey(ignore: true)
  @override
  _$RedditMediaCopyWith<_RedditMedia> get copyWith =>
      __$RedditMediaCopyWithImpl<_RedditMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditMediaToJson(this);
  }
}

abstract class _RedditMedia implements RedditMedia {
  factory _RedditMedia(
      {required String type,
      required Map<String, Object?> oembed}) = _$_RedditMedia;

  factory _RedditMedia.fromJson(Map<String, dynamic> json) =
      _$_RedditMedia.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  Map<String, Object?> get oembed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditMediaCopyWith<_RedditMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
