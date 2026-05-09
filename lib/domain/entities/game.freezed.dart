// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Game _$GameFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'regular':
          return RegularGame.fromJson(
            json
          );
                case 'prank':
          return PrankGame.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Game',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Game {

 Map<String, bool> get playerChecks; Map<String, bool> get secretChecks;
/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCopyWith<Game> get copyWith => _$GameCopyWithImpl<Game>(this as Game, _$identity);

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Game&&const DeepCollectionEquality().equals(other.playerChecks, playerChecks)&&const DeepCollectionEquality().equals(other.secretChecks, secretChecks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playerChecks),const DeepCollectionEquality().hash(secretChecks));

@override
String toString() {
  return 'Game(playerChecks: $playerChecks, secretChecks: $secretChecks)';
}


}

/// @nodoc
abstract mixin class $GameCopyWith<$Res>  {
  factory $GameCopyWith(Game value, $Res Function(Game) _then) = _$GameCopyWithImpl;
@useResult
$Res call({
 Map<String, bool> playerChecks, Map<String, bool> secretChecks
});




}
/// @nodoc
class _$GameCopyWithImpl<$Res>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._self, this._then);

  final Game _self;
  final $Res Function(Game) _then;

/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerChecks = null,Object? secretChecks = null,}) {
  return _then(_self.copyWith(
playerChecks: null == playerChecks ? _self.playerChecks : playerChecks // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,secretChecks: null == secretChecks ? _self.secretChecks : secretChecks // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}

}


/// Adds pattern-matching-related methods to [Game].
extension GamePatterns on Game {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegularGame value)?  regular,TResult Function( PrankGame value)?  prank,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegularGame() when regular != null:
return regular(_that);case PrankGame() when prank != null:
return prank(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegularGame value)  regular,required TResult Function( PrankGame value)  prank,}){
final _that = this;
switch (_that) {
case RegularGame():
return regular(_that);case PrankGame():
return prank(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegularGame value)?  regular,TResult? Function( PrankGame value)?  prank,}){
final _that = this;
switch (_that) {
case RegularGame() when regular != null:
return regular(_that);case PrankGame() when prank != null:
return prank(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String secret,  Map<String, bool> playerChecks,  Map<String, bool> secretChecks,  List<String> misfits)?  regular,TResult Function( Map<String, bool> playerChecks,  Map<String, bool> secretChecks,  Map<String, List<String>> dummyMisfitsByPlayer)?  prank,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegularGame() when regular != null:
return regular(_that.secret,_that.playerChecks,_that.secretChecks,_that.misfits);case PrankGame() when prank != null:
return prank(_that.playerChecks,_that.secretChecks,_that.dummyMisfitsByPlayer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String secret,  Map<String, bool> playerChecks,  Map<String, bool> secretChecks,  List<String> misfits)  regular,required TResult Function( Map<String, bool> playerChecks,  Map<String, bool> secretChecks,  Map<String, List<String>> dummyMisfitsByPlayer)  prank,}) {final _that = this;
switch (_that) {
case RegularGame():
return regular(_that.secret,_that.playerChecks,_that.secretChecks,_that.misfits);case PrankGame():
return prank(_that.playerChecks,_that.secretChecks,_that.dummyMisfitsByPlayer);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String secret,  Map<String, bool> playerChecks,  Map<String, bool> secretChecks,  List<String> misfits)?  regular,TResult? Function( Map<String, bool> playerChecks,  Map<String, bool> secretChecks,  Map<String, List<String>> dummyMisfitsByPlayer)?  prank,}) {final _that = this;
switch (_that) {
case RegularGame() when regular != null:
return regular(_that.secret,_that.playerChecks,_that.secretChecks,_that.misfits);case PrankGame() when prank != null:
return prank(_that.playerChecks,_that.secretChecks,_that.dummyMisfitsByPlayer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class RegularGame implements Game {
  const RegularGame({required this.secret, required final  Map<String, bool> playerChecks, required final  Map<String, bool> secretChecks, required final  List<String> misfits, final  String? $type}): _playerChecks = playerChecks,_secretChecks = secretChecks,_misfits = misfits,$type = $type ?? 'regular';
  factory RegularGame.fromJson(Map<String, dynamic> json) => _$RegularGameFromJson(json);

 final  String secret;
 final  Map<String, bool> _playerChecks;
@override Map<String, bool> get playerChecks {
  if (_playerChecks is EqualUnmodifiableMapView) return _playerChecks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_playerChecks);
}

 final  Map<String, bool> _secretChecks;
@override Map<String, bool> get secretChecks {
  if (_secretChecks is EqualUnmodifiableMapView) return _secretChecks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_secretChecks);
}

 final  List<String> _misfits;
 List<String> get misfits {
  if (_misfits is EqualUnmodifiableListView) return _misfits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_misfits);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegularGameCopyWith<RegularGame> get copyWith => _$RegularGameCopyWithImpl<RegularGame>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegularGameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegularGame&&(identical(other.secret, secret) || other.secret == secret)&&const DeepCollectionEquality().equals(other._playerChecks, _playerChecks)&&const DeepCollectionEquality().equals(other._secretChecks, _secretChecks)&&const DeepCollectionEquality().equals(other._misfits, _misfits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secret,const DeepCollectionEquality().hash(_playerChecks),const DeepCollectionEquality().hash(_secretChecks),const DeepCollectionEquality().hash(_misfits));

@override
String toString() {
  return 'Game.regular(secret: $secret, playerChecks: $playerChecks, secretChecks: $secretChecks, misfits: $misfits)';
}


}

/// @nodoc
abstract mixin class $RegularGameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory $RegularGameCopyWith(RegularGame value, $Res Function(RegularGame) _then) = _$RegularGameCopyWithImpl;
@override @useResult
$Res call({
 String secret, Map<String, bool> playerChecks, Map<String, bool> secretChecks, List<String> misfits
});




}
/// @nodoc
class _$RegularGameCopyWithImpl<$Res>
    implements $RegularGameCopyWith<$Res> {
  _$RegularGameCopyWithImpl(this._self, this._then);

  final RegularGame _self;
  final $Res Function(RegularGame) _then;

/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? secret = null,Object? playerChecks = null,Object? secretChecks = null,Object? misfits = null,}) {
  return _then(RegularGame(
secret: null == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String,playerChecks: null == playerChecks ? _self._playerChecks : playerChecks // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,secretChecks: null == secretChecks ? _self._secretChecks : secretChecks // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,misfits: null == misfits ? _self._misfits : misfits // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PrankGame implements Game {
  const PrankGame({required final  Map<String, bool> playerChecks, required final  Map<String, bool> secretChecks, required final  Map<String, List<String>> dummyMisfitsByPlayer, final  String? $type}): _playerChecks = playerChecks,_secretChecks = secretChecks,_dummyMisfitsByPlayer = dummyMisfitsByPlayer,$type = $type ?? 'prank';
  factory PrankGame.fromJson(Map<String, dynamic> json) => _$PrankGameFromJson(json);

 final  Map<String, bool> _playerChecks;
@override Map<String, bool> get playerChecks {
  if (_playerChecks is EqualUnmodifiableMapView) return _playerChecks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_playerChecks);
}

 final  Map<String, bool> _secretChecks;
@override Map<String, bool> get secretChecks {
  if (_secretChecks is EqualUnmodifiableMapView) return _secretChecks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_secretChecks);
}

 final  Map<String, List<String>> _dummyMisfitsByPlayer;
 Map<String, List<String>> get dummyMisfitsByPlayer {
  if (_dummyMisfitsByPlayer is EqualUnmodifiableMapView) return _dummyMisfitsByPlayer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dummyMisfitsByPlayer);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrankGameCopyWith<PrankGame> get copyWith => _$PrankGameCopyWithImpl<PrankGame>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrankGameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrankGame&&const DeepCollectionEquality().equals(other._playerChecks, _playerChecks)&&const DeepCollectionEquality().equals(other._secretChecks, _secretChecks)&&const DeepCollectionEquality().equals(other._dummyMisfitsByPlayer, _dummyMisfitsByPlayer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playerChecks),const DeepCollectionEquality().hash(_secretChecks),const DeepCollectionEquality().hash(_dummyMisfitsByPlayer));

@override
String toString() {
  return 'Game.prank(playerChecks: $playerChecks, secretChecks: $secretChecks, dummyMisfitsByPlayer: $dummyMisfitsByPlayer)';
}


}

/// @nodoc
abstract mixin class $PrankGameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory $PrankGameCopyWith(PrankGame value, $Res Function(PrankGame) _then) = _$PrankGameCopyWithImpl;
@override @useResult
$Res call({
 Map<String, bool> playerChecks, Map<String, bool> secretChecks, Map<String, List<String>> dummyMisfitsByPlayer
});




}
/// @nodoc
class _$PrankGameCopyWithImpl<$Res>
    implements $PrankGameCopyWith<$Res> {
  _$PrankGameCopyWithImpl(this._self, this._then);

  final PrankGame _self;
  final $Res Function(PrankGame) _then;

/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerChecks = null,Object? secretChecks = null,Object? dummyMisfitsByPlayer = null,}) {
  return _then(PrankGame(
playerChecks: null == playerChecks ? _self._playerChecks : playerChecks // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,secretChecks: null == secretChecks ? _self._secretChecks : secretChecks // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,dummyMisfitsByPlayer: null == dummyMisfitsByPlayer ? _self._dummyMisfitsByPlayer : dummyMisfitsByPlayer // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,
  ));
}


}

// dart format on
