// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  SearchUsers searchUsers({required String query}) {
    return SearchUsers(
      query: query,
    );
  }

  ClearSearch clearSearch() {
    return const ClearSearch();
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(ClearSearch value) clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(ClearSearch value)? clearSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class $SearchUsersCopyWith<$Res> {
  factory $SearchUsersCopyWith(
          SearchUsers value, $Res Function(SearchUsers) then) =
      _$SearchUsersCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchUsersCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchUsersCopyWith<$Res> {
  _$SearchUsersCopyWithImpl(
      SearchUsers _value, $Res Function(SearchUsers) _then)
      : super(_value, (v) => _then(v as SearchUsers));

  @override
  SearchUsers get _value => super._value as SearchUsers;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(SearchUsers(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUsers implements SearchUsers {
  const _$SearchUsers({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchUsers(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsers &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $SearchUsersCopyWith<SearchUsers> get copyWith =>
      _$SearchUsersCopyWithImpl<SearchUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
  }) {
    return searchUsers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
  }) {
    return searchUsers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(ClearSearch value) clearSearch,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(ClearSearch value)? clearSearch,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class SearchUsers implements SearchEvent {
  const factory SearchUsers({required String query}) = _$SearchUsers;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchUsersCopyWith<SearchUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearSearchCopyWith<$Res> {
  factory $ClearSearchCopyWith(
          ClearSearch value, $Res Function(ClearSearch) then) =
      _$ClearSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $ClearSearchCopyWith<$Res> {
  _$ClearSearchCopyWithImpl(
      ClearSearch _value, $Res Function(ClearSearch) _then)
      : super(_value, (v) => _then(v as ClearSearch));

  @override
  ClearSearch get _value => super._value as ClearSearch;
}

/// @nodoc

class _$ClearSearch implements ClearSearch {
  const _$ClearSearch();

  @override
  String toString() {
    return 'SearchEvent.clearSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchUsers,
    required TResult Function() clearSearch,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(ClearSearch value) clearSearch,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(ClearSearch value)? clearSearch,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(ClearSearch value)? clearSearch,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class ClearSearch implements SearchEvent {
  const factory ClearSearch() = _$ClearSearch;
}
