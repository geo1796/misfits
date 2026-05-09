// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Settings {

 int get fixedMisfits; bool get enableCoop; bool get randomMisfits; int get minMisfits; int get maxMisfits; bool get enablePrank; int get prankProbability;
/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this as Settings, _$identity);

  /// Serializes this Settings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.fixedMisfits, fixedMisfits) || other.fixedMisfits == fixedMisfits)&&(identical(other.enableCoop, enableCoop) || other.enableCoop == enableCoop)&&(identical(other.randomMisfits, randomMisfits) || other.randomMisfits == randomMisfits)&&(identical(other.minMisfits, minMisfits) || other.minMisfits == minMisfits)&&(identical(other.maxMisfits, maxMisfits) || other.maxMisfits == maxMisfits)&&(identical(other.enablePrank, enablePrank) || other.enablePrank == enablePrank)&&(identical(other.prankProbability, prankProbability) || other.prankProbability == prankProbability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fixedMisfits,enableCoop,randomMisfits,minMisfits,maxMisfits,enablePrank,prankProbability);

@override
String toString() {
  return 'Settings(fixedMisfits: $fixedMisfits, enableCoop: $enableCoop, randomMisfits: $randomMisfits, minMisfits: $minMisfits, maxMisfits: $maxMisfits, enablePrank: $enablePrank, prankProbability: $prankProbability)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res>  {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 int fixedMisfits, bool enableCoop, bool randomMisfits, int minMisfits, int maxMisfits, bool enablePrank, int prankProbability
});




}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fixedMisfits = null,Object? enableCoop = null,Object? randomMisfits = null,Object? minMisfits = null,Object? maxMisfits = null,Object? enablePrank = null,Object? prankProbability = null,}) {
  return _then(_self.copyWith(
fixedMisfits: null == fixedMisfits ? _self.fixedMisfits : fixedMisfits // ignore: cast_nullable_to_non_nullable
as int,enableCoop: null == enableCoop ? _self.enableCoop : enableCoop // ignore: cast_nullable_to_non_nullable
as bool,randomMisfits: null == randomMisfits ? _self.randomMisfits : randomMisfits // ignore: cast_nullable_to_non_nullable
as bool,minMisfits: null == minMisfits ? _self.minMisfits : minMisfits // ignore: cast_nullable_to_non_nullable
as int,maxMisfits: null == maxMisfits ? _self.maxMisfits : maxMisfits // ignore: cast_nullable_to_non_nullable
as int,enablePrank: null == enablePrank ? _self.enablePrank : enablePrank // ignore: cast_nullable_to_non_nullable
as bool,prankProbability: null == prankProbability ? _self.prankProbability : prankProbability // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Settings].
extension SettingsPatterns on Settings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Settings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Settings value)  $default,){
final _that = this;
switch (_that) {
case _Settings():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Settings value)?  $default,){
final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fixedMisfits,  bool enableCoop,  bool randomMisfits,  int minMisfits,  int maxMisfits,  bool enablePrank,  int prankProbability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.fixedMisfits,_that.enableCoop,_that.randomMisfits,_that.minMisfits,_that.maxMisfits,_that.enablePrank,_that.prankProbability);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fixedMisfits,  bool enableCoop,  bool randomMisfits,  int minMisfits,  int maxMisfits,  bool enablePrank,  int prankProbability)  $default,) {final _that = this;
switch (_that) {
case _Settings():
return $default(_that.fixedMisfits,_that.enableCoop,_that.randomMisfits,_that.minMisfits,_that.maxMisfits,_that.enablePrank,_that.prankProbability);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fixedMisfits,  bool enableCoop,  bool randomMisfits,  int minMisfits,  int maxMisfits,  bool enablePrank,  int prankProbability)?  $default,) {final _that = this;
switch (_that) {
case _Settings() when $default != null:
return $default(_that.fixedMisfits,_that.enableCoop,_that.randomMisfits,_that.minMisfits,_that.maxMisfits,_that.enablePrank,_that.prankProbability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Settings implements Settings {
  const _Settings({required this.fixedMisfits, required this.enableCoop, required this.randomMisfits, required this.minMisfits, required this.maxMisfits, required this.enablePrank, required this.prankProbability});
  factory _Settings.fromJson(Map<String, dynamic> json) => _$SettingsFromJson(json);

@override final  int fixedMisfits;
@override final  bool enableCoop;
@override final  bool randomMisfits;
@override final  int minMisfits;
@override final  int maxMisfits;
@override final  bool enablePrank;
@override final  int prankProbability;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsCopyWith<_Settings> get copyWith => __$SettingsCopyWithImpl<_Settings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Settings&&(identical(other.fixedMisfits, fixedMisfits) || other.fixedMisfits == fixedMisfits)&&(identical(other.enableCoop, enableCoop) || other.enableCoop == enableCoop)&&(identical(other.randomMisfits, randomMisfits) || other.randomMisfits == randomMisfits)&&(identical(other.minMisfits, minMisfits) || other.minMisfits == minMisfits)&&(identical(other.maxMisfits, maxMisfits) || other.maxMisfits == maxMisfits)&&(identical(other.enablePrank, enablePrank) || other.enablePrank == enablePrank)&&(identical(other.prankProbability, prankProbability) || other.prankProbability == prankProbability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fixedMisfits,enableCoop,randomMisfits,minMisfits,maxMisfits,enablePrank,prankProbability);

@override
String toString() {
  return 'Settings(fixedMisfits: $fixedMisfits, enableCoop: $enableCoop, randomMisfits: $randomMisfits, minMisfits: $minMisfits, maxMisfits: $maxMisfits, enablePrank: $enablePrank, prankProbability: $prankProbability)';
}


}

/// @nodoc
abstract mixin class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) _then) = __$SettingsCopyWithImpl;
@override @useResult
$Res call({
 int fixedMisfits, bool enableCoop, bool randomMisfits, int minMisfits, int maxMisfits, bool enablePrank, int prankProbability
});




}
/// @nodoc
class __$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(this._self, this._then);

  final _Settings _self;
  final $Res Function(_Settings) _then;

/// Create a copy of Settings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fixedMisfits = null,Object? enableCoop = null,Object? randomMisfits = null,Object? minMisfits = null,Object? maxMisfits = null,Object? enablePrank = null,Object? prankProbability = null,}) {
  return _then(_Settings(
fixedMisfits: null == fixedMisfits ? _self.fixedMisfits : fixedMisfits // ignore: cast_nullable_to_non_nullable
as int,enableCoop: null == enableCoop ? _self.enableCoop : enableCoop // ignore: cast_nullable_to_non_nullable
as bool,randomMisfits: null == randomMisfits ? _self.randomMisfits : randomMisfits // ignore: cast_nullable_to_non_nullable
as bool,minMisfits: null == minMisfits ? _self.minMisfits : minMisfits // ignore: cast_nullable_to_non_nullable
as int,maxMisfits: null == maxMisfits ? _self.maxMisfits : maxMisfits // ignore: cast_nullable_to_non_nullable
as int,enablePrank: null == enablePrank ? _self.enablePrank : enablePrank // ignore: cast_nullable_to_non_nullable
as bool,prankProbability: null == prankProbability ? _self.prankProbability : prankProbability // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
