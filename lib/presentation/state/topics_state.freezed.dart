// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopicsState {

 int get activeTopicId; List<Topic> get topics;
/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicsStateCopyWith<TopicsState> get copyWith => _$TopicsStateCopyWithImpl<TopicsState>(this as TopicsState, _$identity);

  /// Serializes this TopicsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicsState&&(identical(other.activeTopicId, activeTopicId) || other.activeTopicId == activeTopicId)&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeTopicId,const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'TopicsState(activeTopicId: $activeTopicId, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $TopicsStateCopyWith<$Res>  {
  factory $TopicsStateCopyWith(TopicsState value, $Res Function(TopicsState) _then) = _$TopicsStateCopyWithImpl;
@useResult
$Res call({
 int activeTopicId, List<Topic> topics
});




}
/// @nodoc
class _$TopicsStateCopyWithImpl<$Res>
    implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._self, this._then);

  final TopicsState _self;
  final $Res Function(TopicsState) _then;

/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeTopicId = null,Object? topics = null,}) {
  return _then(_self.copyWith(
activeTopicId: null == activeTopicId ? _self.activeTopicId : activeTopicId // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicsState].
extension TopicsStatePatterns on TopicsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicsState value)  $default,){
final _that = this;
switch (_that) {
case _TopicsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicsState value)?  $default,){
final _that = this;
switch (_that) {
case _TopicsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int activeTopicId,  List<Topic> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicsState() when $default != null:
return $default(_that.activeTopicId,_that.topics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int activeTopicId,  List<Topic> topics)  $default,) {final _that = this;
switch (_that) {
case _TopicsState():
return $default(_that.activeTopicId,_that.topics);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int activeTopicId,  List<Topic> topics)?  $default,) {final _that = this;
switch (_that) {
case _TopicsState() when $default != null:
return $default(_that.activeTopicId,_that.topics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopicsState extends TopicsState {
  const _TopicsState({required this.activeTopicId, required final  List<Topic> topics}): _topics = topics,super._();
  factory _TopicsState.fromJson(Map<String, dynamic> json) => _$TopicsStateFromJson(json);

@override final  int activeTopicId;
 final  List<Topic> _topics;
@override List<Topic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicsStateCopyWith<_TopicsState> get copyWith => __$TopicsStateCopyWithImpl<_TopicsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicsState&&(identical(other.activeTopicId, activeTopicId) || other.activeTopicId == activeTopicId)&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeTopicId,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'TopicsState(activeTopicId: $activeTopicId, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$TopicsStateCopyWith<$Res> implements $TopicsStateCopyWith<$Res> {
  factory _$TopicsStateCopyWith(_TopicsState value, $Res Function(_TopicsState) _then) = __$TopicsStateCopyWithImpl;
@override @useResult
$Res call({
 int activeTopicId, List<Topic> topics
});




}
/// @nodoc
class __$TopicsStateCopyWithImpl<$Res>
    implements _$TopicsStateCopyWith<$Res> {
  __$TopicsStateCopyWithImpl(this._self, this._then);

  final _TopicsState _self;
  final $Res Function(_TopicsState) _then;

/// Create a copy of TopicsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeTopicId = null,Object? topics = null,}) {
  return _then(_TopicsState(
activeTopicId: null == activeTopicId ? _self.activeTopicId : activeTopicId // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}


}

// dart format on
