// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reddit_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditListing _$RedditListingFromJson(Map<String, dynamic> json) {
  return _RedditListing.fromJson(json);
}

/// @nodoc
class _$RedditListingTearOff {
  const _$RedditListingTearOff();

  _RedditListing call(
      {String? after,
      String? before,
      required int dist,
      required String modhash,
      required List<RedditPost> children}) {
    return _RedditListing(
      after: after,
      before: before,
      dist: dist,
      modhash: modhash,
      children: children,
    );
  }

  RedditListing fromJson(Map<String, Object> json) {
    return RedditListing.fromJson(json);
  }
}

/// @nodoc
const $RedditListing = _$RedditListingTearOff();

/// @nodoc
mixin _$RedditListing {
  String? get after => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;
  int get dist => throw _privateConstructorUsedError;
  String get modhash => throw _privateConstructorUsedError;
  List<RedditPost> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditListingCopyWith<RedditListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditListingCopyWith<$Res> {
  factory $RedditListingCopyWith(
          RedditListing value, $Res Function(RedditListing) then) =
      _$RedditListingCopyWithImpl<$Res>;
  $Res call(
      {String? after,
      String? before,
      int dist,
      String modhash,
      List<RedditPost> children});
}

/// @nodoc
class _$RedditListingCopyWithImpl<$Res>
    implements $RedditListingCopyWith<$Res> {
  _$RedditListingCopyWithImpl(this._value, this._then);

  final RedditListing _value;
  // ignore: unused_field
  final $Res Function(RedditListing) _then;

  @override
  $Res call({
    Object? after = freezed,
    Object? before = freezed,
    Object? dist = freezed,
    Object? modhash = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      dist: dist == freezed
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as int,
      modhash: modhash == freezed
          ? _value.modhash
          : modhash // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RedditPost>,
    ));
  }
}

/// @nodoc
abstract class _$RedditListingCopyWith<$Res>
    implements $RedditListingCopyWith<$Res> {
  factory _$RedditListingCopyWith(
          _RedditListing value, $Res Function(_RedditListing) then) =
      __$RedditListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? after,
      String? before,
      int dist,
      String modhash,
      List<RedditPost> children});
}

/// @nodoc
class __$RedditListingCopyWithImpl<$Res>
    extends _$RedditListingCopyWithImpl<$Res>
    implements _$RedditListingCopyWith<$Res> {
  __$RedditListingCopyWithImpl(
      _RedditListing _value, $Res Function(_RedditListing) _then)
      : super(_value, (v) => _then(v as _RedditListing));

  @override
  _RedditListing get _value => super._value as _RedditListing;

  @override
  $Res call({
    Object? after = freezed,
    Object? before = freezed,
    Object? dist = freezed,
    Object? modhash = freezed,
    Object? children = freezed,
  }) {
    return _then(_RedditListing(
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      dist: dist == freezed
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as int,
      modhash: modhash == freezed
          ? _value.modhash
          : modhash // ignore: cast_nullable_to_non_nullable
              as String,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RedditPost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditListing implements _RedditListing {
  _$_RedditListing(
      {this.after,
      this.before,
      required this.dist,
      required this.modhash,
      required this.children});

  factory _$_RedditListing.fromJson(Map<String, dynamic> json) =>
      _$$_RedditListingFromJson(json);

  @override
  final String? after;
  @override
  final String? before;
  @override
  final int dist;
  @override
  final String modhash;
  @override
  final List<RedditPost> children;

  @override
  String toString() {
    return 'RedditListing(after: $after, before: $before, dist: $dist, modhash: $modhash, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditListing &&
            (identical(other.after, after) ||
                const DeepCollectionEquality().equals(other.after, after)) &&
            (identical(other.before, before) ||
                const DeepCollectionEquality().equals(other.before, before)) &&
            (identical(other.dist, dist) ||
                const DeepCollectionEquality().equals(other.dist, dist)) &&
            (identical(other.modhash, modhash) ||
                const DeepCollectionEquality()
                    .equals(other.modhash, modhash)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(after) ^
      const DeepCollectionEquality().hash(before) ^
      const DeepCollectionEquality().hash(dist) ^
      const DeepCollectionEquality().hash(modhash) ^
      const DeepCollectionEquality().hash(children);

  @JsonKey(ignore: true)
  @override
  _$RedditListingCopyWith<_RedditListing> get copyWith =>
      __$RedditListingCopyWithImpl<_RedditListing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditListingToJson(this);
  }
}

abstract class _RedditListing implements RedditListing {
  factory _RedditListing(
      {String? after,
      String? before,
      required int dist,
      required String modhash,
      required List<RedditPost> children}) = _$_RedditListing;

  factory _RedditListing.fromJson(Map<String, dynamic> json) =
      _$_RedditListing.fromJson;

  @override
  String? get after => throw _privateConstructorUsedError;
  @override
  String? get before => throw _privateConstructorUsedError;
  @override
  int get dist => throw _privateConstructorUsedError;
  @override
  String get modhash => throw _privateConstructorUsedError;
  @override
  List<RedditPost> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditListingCopyWith<_RedditListing> get copyWith =>
      throw _privateConstructorUsedError;
}
