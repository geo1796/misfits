// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redirect_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RedirectState {

 bool get playing;
/// Create a copy of RedirectState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedirectStateCopyWith<RedirectState> get copyWith => _$RedirectStateCopyWithImpl<RedirectState>(this as RedirectState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedirectState&&(identical(other.playing, playing) || other.playing == playing));
}


@override
int get hashCode => Object.hash(runtimeType,playing);

@override
String toString() {
  return 'RedirectState(playing: $playing)';
}


}

/// @nodoc
abstract mixin class $RedirectStateCopyWith<$Res>  {
  factory $RedirectStateCopyWith(RedirectState value, $Res Function(RedirectState) _then) = _$RedirectStateCopyWithImpl;
@useResult
$Res call({
 bool playing
});




}
/// @nodoc
class _$RedirectStateCopyWithImpl<$Res>
    implements $RedirectStateCopyWith<$Res> {
  _$RedirectStateCopyWithImpl(this._self, this._then);

  final RedirectState _self;
  final $Res Function(RedirectState) _then;

/// Create a copy of RedirectState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playing = null,}) {
  return _then(_self.copyWith(
playing: null == playing ? _self.playing : playing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RedirectState].
extension RedirectStatePatterns on RedirectState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedirectState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedirectState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedirectState value)  $default,){
final _that = this;
switch (_that) {
case _RedirectState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedirectState value)?  $default,){
final _that = this;
switch (_that) {
case _RedirectState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool playing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedirectState() when $default != null:
return $default(_that.playing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool playing)  $default,) {final _that = this;
switch (_that) {
case _RedirectState():
return $default(_that.playing);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool playing)?  $default,) {final _that = this;
switch (_that) {
case _RedirectState() when $default != null:
return $default(_that.playing);case _:
  return null;

}
}

}

/// @nodoc


class _RedirectState extends RedirectState {
  const _RedirectState({required this.playing}): super._();
  

@override final  bool playing;

/// Create a copy of RedirectState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedirectStateCopyWith<_RedirectState> get copyWith => __$RedirectStateCopyWithImpl<_RedirectState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedirectState&&(identical(other.playing, playing) || other.playing == playing));
}


@override
int get hashCode => Object.hash(runtimeType,playing);

@override
String toString() {
  return 'RedirectState(playing: $playing)';
}


}

/// @nodoc
abstract mixin class _$RedirectStateCopyWith<$Res> implements $RedirectStateCopyWith<$Res> {
  factory _$RedirectStateCopyWith(_RedirectState value, $Res Function(_RedirectState) _then) = __$RedirectStateCopyWithImpl;
@override @useResult
$Res call({
 bool playing
});




}
/// @nodoc
class __$RedirectStateCopyWithImpl<$Res>
    implements _$RedirectStateCopyWith<$Res> {
  __$RedirectStateCopyWithImpl(this._self, this._then);

  final _RedirectState _self;
  final $Res Function(_RedirectState) _then;

/// Create a copy of RedirectState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playing = null,}) {
  return _then(_RedirectState(
playing: null == playing ? _self.playing : playing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
